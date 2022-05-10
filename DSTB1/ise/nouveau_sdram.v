`timescale 1ns / 1ps

/* DAVID'S ST BOOSTER v 1 (DSTB1) 				*/
/* Copyright 2022 D Henderson 						*/
/* Released under the terms of the GPLv2 	*/

module nouveau_sdram(
	input CLK,
	input CLK8,
	input RST,
	input ACCESS,
	input UDS,
	input LDS,
	input RW,
	input [23:1] A,
	
	output [12:0] MA,
	output [1:0] BA,
	output [1:0] DQM,
	output RAS,
	output CAS,
	output RAMWE,

	output VALID,
	output WTERM
);

localparam [2:0] CMD_LOADMODE  = 3'b000;
localparam [2:0] CMD_REFRESH   = 3'b001;
localparam [2:0] CMD_PRECHARGE = 3'b010;
localparam [2:0] CMD_ACTIVE    = 3'b011;
localparam [2:0] CMD_WRITE     = 3'b100;
localparam [2:0] CMD_READ      = 3'b101;
localparam [2:0] CMD_NOP       = 3'b111;

parameter MODE = 13'b0000000100000;

reg [10:0] COUNTER;
reg READY;
reg [2:0] SETUP_CMD;
reg [2:0] CMD;
reg REFRESH;
reg [12:0] SETUP_MA;
reg [12:0] MAIN_MA;


// startup timing
// using 8MHZ clock
// 100us before PRECHARGE (800 cycles -- say 1024)
//wire PRECHARGE = 		COUNTER[10] & ( COUNTER[3:0] == 4'b0000 ); // x1 precharge command
//wire AUTO_REFRESH = 	COUNTER[10] & ( ( COUNTER[3:0] == 4'b0010 ) | ( COUNTER[3:0] == 4'b0100 ) );
//wire LOAD_MODE = 		COUNTER[10] & ( COUNTER[3:0] == 4'b0110 );
wire PRECHARGE = 		COUNTER == 11'd1024; // x1 precharge command
wire AUTO_REFRESH = 	COUNTER == 11'd1030 || COUNTER == 11'd1036;
wire LOAD_MODE = 		COUNTER == 11'd1042;

always @(posedge CLK8 or negedge RST)  begin
	if (RST == 1'b0) begin 
		COUNTER 	<= 'd0;
	end else begin 
		COUNTER <= COUNTER + 'd1;
	end
end

// indicate refresh needed and do initialisation
always @(posedge CLK or negedge RST)  begin

	if (RST == 1'b0) begin 
		READY		<= 'b1;
		REFRESH		<= 'b1;
		SETUP_CMD 		<= CMD_NOP; 
	end else begin 
		REFRESH <= (COUNTER[5:0] != 6'h0) | READY;
		SETUP_CMD 	<= CMD_NOP; 
	
		if (READY == 1'b1) begin
			if(PRECHARGE == 1'b1) begin
				$display("precharging all banks");
				SETUP_CMD			<= CMD_PRECHARGE;
				SETUP_MA[10] 	<= 1'b1;      // precharge all banks
			end
			if(AUTO_REFRESH == 1'b1) begin
				$display("issuing auto refresh command");
				SETUP_CMD			<= CMD_REFRESH;
			end
			if(LOAD_MODE == 1'b1) begin
				$display("loading mode register: %b", MODE);
				SETUP_CMD 		<= CMD_LOADMODE;
				SETUP_MA 		<= MODE;
			end
			// latch when the refresh period is complete
			// min 2 clock cycles after MODE
			READY <= COUNTER != 11'd1048;
		end 
	end	
end

FDCP refresh_ff( .D( 1'b0 ), .C( ~REFRESH ), .CLR(1'b0), .PRE( CMD == CMD_REFRESH ), .Q( refresh_req ) );

localparam [3:0] STATE_IDLE = 'd0;
localparam [3:0] STATE_READ = 'd1;
localparam [3:0] STATE_WRITE = 'd2;
localparam [3:0] STATE_CLOSE	= 'd3;
localparam [3:0] STATE_ACCESS_WAIT = 'd4;
localparam [3:0] STATE_REFRESH = 'd5;
localparam [3:0] STATE_REFRESH_NOP1 = 'd6;
localparam [3:0] STATE_REFRESH_NOP2 = 'd7;
localparam [3:0] STATE_REFRESH_NOP3 = 'd8;
localparam [3:0] STATE_REFRESH_NOP4 = 'd9;
localparam [3:0] STATE_REFRESH_NOP5 = 'd10;
localparam [3:0] STATE_REFRESH_NOP6 = 'd11;
localparam [3:0] STATE_REFRESH_NOP7 = 'd12;
localparam [3:0] STATE_REFRESH_NOP8 = 'd13;

localparam [3:0] STATE_READ_HOLD = 'd14;
localparam [3:0] STATE_WRITE_HOLD = 'd15;


reg [3:0] state=0;
reg [1:0] refresh_wait = 2'b00;

always @( negedge CLK ) begin


	case(state)
		STATE_IDLE: begin
			if( ~refresh_req ) begin
				CMD <= CMD_NOP;
				state <= STATE_REFRESH_NOP1;
			end
			else if( ~(ACCESS) ) begin  // is there a read or write request?
				CMD <= CMD_ACTIVE;  // if so activate
				state <= RW ? STATE_READ : STATE_WRITE_HOLD;
			end
			else begin
				CMD <= CMD_NOP;  // otherwise stay idle
				state <= STATE_IDLE;
			end
			MAIN_MA <= { 1'b0, A[22:11] };
		end
		STATE_READ: begin
			CMD <= CMD_READ;
			MAIN_MA <= { 2'b00, ACCESS, 2'b00, A[10:3] }; // no auto-precharge
			state <= ACCESS|(UDS&LDS) ? STATE_IDLE : STATE_READ;
		end
		STATE_WRITE_HOLD: begin
			CMD <= CMD_NOP;
			if( ~(UDS&LDS) )
				state <= STATE_WRITE;
		end
		STATE_WRITE: begin
			CMD <= CMD_WRITE;
			MAIN_MA <= { 3'b001, 2'b00, A[10:3] }; // auto-precharge
			state <= STATE_ACCESS_WAIT;
		end
		STATE_ACCESS_WAIT: begin
			CMD <= CMD_NOP;
			state <= ACCESS ? STATE_IDLE : STATE_ACCESS_WAIT;
		end
		STATE_REFRESH_NOP1: begin
			CMD <= CMD_NOP;
			state <= STATE_REFRESH;
		end
		STATE_REFRESH: begin
			CMD <= CMD_REFRESH;
			MAIN_MA[10] 	<= 1'b1;      // precharge all banks
			refresh_wait <= 2'b11;
			state <= STATE_REFRESH_NOP2;
		end
		STATE_REFRESH_NOP2: begin
			CMD <= CMD_NOP;
			refresh_wait <= refresh_wait - 'd1;
			state <= refresh_wait ? STATE_REFRESH_NOP2 : STATE_IDLE;
		end
		default: begin
			CMD <= CMD_NOP;
			state <= STATE_IDLE;
		end		
	endcase
end

localparam trl = 4;  // total read latency is the SDRAM CAS-latency (two) plus the SDRAM controller induced latency (two)
reg [trl-1:0] RdDataValidPipe;  
always @(posedge CLK) begin
	if( ACCESS )
		RdDataValidPipe <= 'd0;
	else
		RdDataValidPipe <= {RdDataValidPipe[trl-2:0], state==2'h1 & ~ACCESS };
end
	
assign RdDataValid = RdDataValidPipe[trl-1];


assign DQM = READY ? 2'b11 : { UDS, LDS };
assign BA = READY ? 2'b00 : A[2:1];
assign MA = READY ? SETUP_MA : MAIN_MA;
assign RAS = READY ? SETUP_CMD[2] : CMD[2];
assign CAS = READY ? SETUP_CMD[1] : CMD[1];
assign RAMWE = READY ? SETUP_CMD[0] : CMD[0];

wire valid;
FDCP valid_latch( .D(1'b0), .C( 1'b0), .CLR( RdDataValid ), .PRE( ACCESS ), .Q( valid ) );
assign VALID = READY | valid;

wire wterm;
FDCP wterm_latch( .D(1'b0), .C( 1'b0), .CLR(CMD == CMD_ACTIVE), .PRE( ACCESS ), .Q( wterm ) );
assign WTERM = READY | wterm;

endmodule

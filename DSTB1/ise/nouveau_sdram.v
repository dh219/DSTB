`timescale 1ns / 1ps

/* DAVID'S ST BOOSTER v 1 (DSTB1) 				*/
/* Copyright 2022 D Henderson 						*/
/* Released under the terms of the GPLv2 	*/

module nouveau_sdram(
	input CLK,
	input RST,
	input AS,
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
	output CKE,

	output VALID,
	output READY
);

localparam [2:0] CMD_LOADMODE  = 3'b000;
localparam [2:0] CMD_REFRESH   = 3'b001;
localparam [2:0] CMD_PRECHARGE = 3'b010;
localparam [2:0] CMD_ACTIVE    = 3'b011;
localparam [2:0] CMD_WRITE     = 3'b100;
localparam [2:0] CMD_READ      = 3'b101;
localparam [2:0] CMD_NOP       = 3'b111;

parameter MODE = 13'b0000000100000;

reg [13:0] COUNTER;
reg READY_IN;
reg [2:0] SETUP_CMD;
reg [2:0] CMD;
reg REFRESH;
reg [12:0] SETUP_MA;
reg [12:0] MAIN_MA;

reg ACTIVE;
reg UDS_IN;
reg LDS_IN;
reg RW_IN;
always @(posedge CLK) begin
	ACTIVE <= AS | ( UDS & LDS );
	UDS_IN <= UDS;
	LDS_IN <= LDS;
	RW_IN <= RW;
end

// startup timing
// using 66MHZ clock
// 100us before PRECHARGE (6600 cycles)
wire PRECHARGE = 		COUNTER[13:0] == 'd6600; // x1 precharge command
wire AUTO_REFRESH = 	COUNTER[13:0] == 'd6700 || COUNTER == 'd6800;
wire LOAD_MODE = 		COUNTER[13:0] == 'd6900;

localparam [3:0] STATE_IDLE = 'd0;
localparam [3:0] STATE_REFRESH = 'd1;
localparam [3:0] STATE_READ = 'd2;
localparam [3:0] STATE_READ_WAIT = 'd3;
localparam [3:0] STATE_ACCESS_WAIT_NOP = 'd4;

reg [3:0] state=0;
reg [2:0] access_wait = 3'd0;
reg [1:0] BA_IN;
reg [1:0] DQM_IN;
reg CKE_IN = 1'b1;

FDCP refresh_ff( .D( 1'b0 ), .C( ~REFRESH ), .CLR(1'b0), .PRE( state == STATE_REFRESH ), .Q( refresh_req ) );

// indicate refresh needed and do initialisation
always @(posedge CLK or negedge RST)  begin

	if (RST == 1'b0) begin 
		COUNTER 	<= 'd0;
		READY_IN		<= 'b1;
		REFRESH		<= 'b1;
		SETUP_CMD 		<= CMD_NOP; 
	end else begin 
		COUNTER <= COUNTER + 'd1;
		REFRESH <= (COUNTER[8:0] != 9'h0) | READY_IN; // every 512 cycles (good down to 33MHz)
//		REFRESH <= (COUNTER[7:0] != 8'h0) | READY_IN; // every 256 cycles (good down to 17MHz)
//		REFRESH <= (COUNTER[6:0] != 7'h0) | READY_IN; // every 128 cycles (good down to 9MHz)
//		REFRESH <= (COUNTER[5:0] != 6'h0) | READY_IN; // every 64 cycles (good down to 5MHz)
		SETUP_CMD 	<= CMD_NOP; 
	
		if (READY_IN == 1'b1) begin
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
			READY_IN <= COUNTER[13:0] != 'd7000;
		end 
	end	
end

wire [12:0] CAS_MA = { 5'b00100, A[8:1] }; //  auto-precharge

always @(posedge CLK)  begin

	if( READY_IN ) begin
		CMD <= SETUP_CMD;
		MAIN_MA <= SETUP_MA;
		BA_IN <= 2'b00;
		DQM_IN <= 2'b11;
		CKE_IN <= 1'b1;
	end
	else begin

		if( CKE_IN && access_wait )
			access_wait <= access_wait - 'd1;
	
		case(state)
			STATE_IDLE: begin
				if( ~refresh_req ) begin
					state <= STATE_REFRESH;
					CMD <= CMD_NOP;  
					CKE_IN <= 1'b1;
				end
				else if( ~ACTIVE ) begin  // is there a read or write request?
					CMD <= CMD_ACTIVE;
					access_wait <= 'd7;
					MAIN_MA <= { 1'b0, A[20:9] };
					state <= STATE_READ;
					CKE_IN <= 1'b1; 
				end
				else begin  // otherwise stay idle
					state <= STATE_IDLE;
					CMD <= CMD_NOP;
					CKE_IN <= 1'b1;
				end
			end
			STATE_READ: begin
				CMD <= RW_IN ? CMD_READ : CMD_WRITE;
				MAIN_MA <= CAS_MA;
				state <= RW_IN ? STATE_READ_WAIT : STATE_ACCESS_WAIT_NOP;
				CKE_IN <= 1'b1; 
			end
			STATE_READ_WAIT: begin
				CMD <= CMD_NOP;
				MAIN_MA <= CAS_MA;
				state <= ACTIVE ? STATE_ACCESS_WAIT_NOP : STATE_READ_WAIT;
				CKE_IN <= 1'b0; // suspend next clock
			end
			STATE_REFRESH: begin
				CMD <= CMD_REFRESH;
				MAIN_MA[10] 	<= 1'b1;      // precharge all banks
				access_wait <= 3'b111;
				state <= STATE_ACCESS_WAIT_NOP;
				CKE_IN <= 1'b1;
			end
			STATE_ACCESS_WAIT_NOP: begin
				CMD <= CMD_NOP;
				MAIN_MA <= CAS_MA;
				state <= access_wait ? STATE_ACCESS_WAIT_NOP : STATE_IDLE;
				CKE_IN <= 1'b1;
			end
			default: begin
				CMD <= CMD_NOP;
				state <= STATE_IDLE;
				CKE_IN <= 1'b1;
			end		
		endcase

		DQM_IN <= ACTIVE ? 2'b11 : { UDS_IN, LDS_IN };
		BA_IN <= A[22:21];
	end
end

localparam trl = 4;  // total read latency is the SDRAM CAS-latency (two) plus the SDRAM controller induced latency (two)
reg [trl-1:0] RdDataValidPipe;  
always @(posedge CLK) begin
	if( ACTIVE )
		RdDataValidPipe <= 'd0;
	else
		RdDataValidPipe <= {RdDataValidPipe[trl-2:0], state == STATE_READ  };
end

assign DQM = DQM_IN;
assign BA = BA_IN;
assign MA = MAIN_MA;
assign RAS = CMD[2];
assign CAS = CMD[1];
assign RAMWE = CMD[0];
assign CKE = CKE_IN;

/* fix these next */

//wire valid;
// this is the technically correct one -- only assert DTACK when data is genuinely on the bus
//FDCP valid_latch( .D(1'b0), .C( 1'b0), .CLR( RdDataValidPipe[trl-1] ), .PRE( ACTIVE ), .Q( valid ) );

// these rely on the fact the sdram controller reacts quicker than the 68k. Use with measured caution.
//FDCP valid_latch( .D(1'b0), .C( 1'b0), .CLR( state == STATE_READ ), .PRE( ACTIVE ), .Q( valid ) );	
FDCP valid_latch( .D(1'b0), .C( 1'b0), .CLR( CMD == CMD_ACTIVE ), .PRE( ACTIVE ), .Q( valid ) );	

assign VALID = READY_IN | valid;
assign READY = READY_IN;
endmodule

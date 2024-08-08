`timescale 1ns / 1ps

/* DAVID'S ST BOOSTER v 1 (DSTB1) 				*/
/* Copyright 2022 D Henderson 						*/
/* Released under the terms of the GPLv2 	*/

module altram_68k (
	input AS_INT,
	inout AS,
	input RW,
	input UDS,
	input LDS,
	inout DTACK,
	inout DTACK_INT,

	input BGK,
	input RST,
	input BERR,

	input CLKOSC,
	input CLK8,
	output CLKOUT,
	output RAMCLK,

	inout E,
	input E_INT,
	input VPA,
	input VMA_INT,
	output VMA,
	
	output [2:0] DQM,
	output [1:0] BA,
	output [12:0] MA,
	output BOE ,
	output RAMWE,
	output CAS,
	output RAS,

	input [2:0] FC,
	input [23:1] A,

	inout [1:5] TP,
	output LED
 );

wire BGI;
wire BGO;


reg CLKOSC_2 = 1'b1;
reg CLKOSC_4 = 1'b1;
always @(posedge CLKOSC ) begin
	if( CLKOSC_2 )
		CLKOSC_4 <= ~CLKOSC_4;
	CLKOSC_2 <= ~CLKOSC_2;
end



// 4 seems close to ideal with old switching
// 3 closer with SJL switching
localparam shift = 3;  
reg [shift-1:0] CLK_D = 'd0;
always @( negedge CLKOSC ) begin
	CLK_D <= { CLK_D[shift-2:0], ~CLK8 };
end
// synthesized 8MHz system clock
wire CLK8_SYN = CLK_D[shift-1];



reg [2:0] BGK_D;
reg [2:0] RST_D;
reg [2:0] AS_D;
always @( negedge CLKOSC ) begin
	BGK_D <= { BGK_D[1:0], BGK };
	RST_D <= { RST_D[1:0], RST };
	AS_D <= { AS_D[1:0], AS };
end
wire BGK_IN = BGK_D[2];
wire RST_IN = RST_D[2];
wire AS_EXT = BGK_IN | AS_D[2];

/*
reg AS_EXT;
always @(posedge CLK8_SYN) begin
	AS_EXT <= BGK_IN ? 1'b1 : AS; // AS_EXT should only assert at S3 (half cycle delay for blitter)
end
*/
wire AS_COMBINED = AS_INT & AS_EXT;



reg ENABLE = 1'b1;
reg reg_dtack = 1'b1;
reg ROM_DECODE = 1'b1;
reg ALLOWFAST = 1'b0;

always @( negedge AS_INT or negedge RST_IN ) begin
	if( ~RST_IN ) begin
		reg_dtack <= 1'b1;
		ENABLE <= 1'b1;
	end
	else begin
		if( A[23:4] == 20'hFFFE1 ) begin // 0xFFFE1x
			if( A[3:1] == 3'h7 ) begin // fffe1e -- altrom enable
				ROM_DECODE <= 1'b0;
				reg_dtack <= 1'b0;
			end
			else if(  A[3:1] == 3'h6 ) begin // fffe1c -- fast
				ALLOWFAST <= 1'b0;
				reg_dtack <= 1'b0;
			end
			else if(  A[3:1] == 3'h5 ) begin // fffe1a -- slow
				ALLOWFAST <= 1'b1;
				reg_dtack <= 1'b0;
			end
			else			begin
				ENABLE <= 1'b0;
				reg_dtack <= 1'b0;
			end
		end
		else begin
			reg_dtack <= 1'b1;		
		end
	end
end


/* sdram module */
wire [12:0] ma;
wire [1:0] ba;
wire [1:0] dqm;
wire ras;
wire cas;
wire ramwe;
wire cke;
wire ready;

wire altram_access = ENABLE | AS_COMBINED | ( A[23:22] != 2'b01 && A[23:22] != 2'b10 );
wire altrom_access = ROM_DECODE | AS_INT | ( A[23:20] != 4'he & A[23:3] != 'd0 );
wire psg = AS_INT | ( A[23:8] != 16'hFF88 );
wire sdram_access = ( altram_access & altrom_access );
wire [3:0] REWRITE_A2320 = altrom_access ? A[23:20] : 4'hB;


wire TOS206 = altrom_access ? AS_COMBINED | ( ( A[23:20] != 4'he ) & ( A[23:3] != 21'h0 ) ) : 1'b1;
reg dtack_tos206;
always @( posedge CLK8_SYN ) begin	// should be at least a half cycle delay AS->DTACK
	dtack_tos206 <= TOS206;
end

/*
reg [1:0] dtack_tos206 = 1'b1;
always @( negedge CLKOSC_2 ) begin
	if( AS_COMBINED )
		dtack_tos206 <= 2'b11;
	else
		dtack_tos206 <= {dtack_tos206[0],TOS206};
end
*/
/*
reg [3:0] AS_BGK_D;
always @( posedge CLKOSC ) begin
	AS_BGK_D[3:0] <= { AS_BGK_D[2:0], BGK ? 1'b1 : AS };
end
*/

nouveau_sdram sdram(
	.CLK(RAMCLK),
	.RST(RST_IN),
	
	.AS( sdram_access ),
	.UDS(UDS),
	.LDS(LDS),
	.RW(RW),
	
	.A( { REWRITE_A2320, A[19:1] } ),
	.VALID(sdram_valid),

	.MA(ma),
	.BA(ba),
	.DQM(dqm),

	.RAS(ras),
	.CAS(cas),
	.RAMWE(ramwe),
	.CKE(cke),
	.READY(ready)
);


/* clock switching */
wire SLOW = ALLOWFAST ? 1'b0 : BGO & BGK_IN & psg & ( AS_INT | ~sdram_access );

`ifdef OLDCLK
/*
wire CLK_OUT_INT;
clockmux mod_clock ( 
	.clk0( CLKOSC_4 ),
	.clk1( ~CLK8_SYN ),
	.select( SLOW ), // high = clk0
	.active0( FASTACTIVE ),
	.active1( SLOWACTIVE ),
	.out_clock( CLK_OUT_INT )
);
*/
`else
reg CLK_OUT_INT;
always @( negedge CLKOSC ) begin
	if( CLKOSC_2 ) begin
		if( SLOW )
			CLK_OUT_INT <= ~CLKOSC_4;
		else
			CLK_OUT_INT <= ~CLK8_SYN;
	end
end
`endif



/* assignments */
assign DTACK = (BGK_IN | (sdram_valid & dtack_tos206) )  ? 1'bz : 1'b0;

assign AS = BGK_IN ? (~sdram_access|AS_INT) : 1'bz;
assign DTACK_INT = (~sdram_access|DTACK) & reg_dtack & sdram_valid & dtack_tos206;

assign RAMCLK = CLKOSC;
assign CLKOUT = ~CLK_OUT_INT;

assign E = BGK_IN ? E_INT : 1'bz;
assign VMA = BGK_IN ? VMA_INT : 1'bz;

assign CKE = cke;
assign DQM[1:0] = dqm;
assign BA[1:0] = ba;
assign MA[12:0] = ma;
assign RAMWE = ramwe;
assign CAS = cas;
assign RAS = ras;

assign BOE = 1'b0;//sdram_access;

//wire screen = ~RW & ~AS_INT & A[23:1] == 23'h7FC101; // upper 23 bits of the mid screen address register

reg BGO_IN = 1'b1;
always @( negedge CLKOSC or posedge BGI ) begin
	if( BGI )
		BGO_IN <= 1'b1;
	else begin
		if( AS_INT )
			BGO_IN <= 1'b0;
		else
			BGO_IN <= BGO_IN;
	end
end

assign BGI = TP[5];
assign BGO = BGO_IN;

wire video = ( ( A[23:1] != 'h7FC100 ) & ( A[23:1] != 'h7FC101 ) ) | AS_INT | RW; // FF8200 + 802 right shifted one. Address strobe valid and write.


assign TP[1] = TOS206;
assign TP[2] = ~video;
assign TP[3] = CKE;
assign TP[4] = BGO;
assign TP[5] = 1'bz; //BGI;

assign LED = sdram_valid;

endmodule

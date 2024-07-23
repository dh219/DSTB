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
	inout BERR,

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

wire BR;

reg RESET_IN = 1'b0;
always @( posedge RST )
	RESET_IN <= 1'b1; // latch after first

reg CLKOSC_2 = 1'b1;
always @(posedge CLKOSC ) begin
	CLKOSC_2 <= ~CLKOSC_2;
end
reg CLKOSC_4 = 1'b1;
always @(posedge CLKOSC_2 ) begin
	CLKOSC_4 <= ~CLKOSC_4;
end
reg CLKOSC_8 = 1'b1;
always @(posedge CLKOSC_4 ) begin
	CLKOSC_8 <= ~CLKOSC_8;
end

reg ALLOWFAST = 1'b1;

// 4 seems close to ideal
localparam shift = 4;  
reg [shift-1:0] CLK_D = 'd0;
always @( negedge CLKOSC ) begin
	CLK_D <= { CLK_D[shift-2:0], ~CLK8 };
end


/* RAM */
reg ENABLE = 1'b1;
reg reg_dtack = 1'b1;
reg ROM_DECODE = 1'b1;

wire AS_COMBINED = AS_INT & AS;

always @( negedge AS_INT or negedge RST ) begin
	if( ~RST ) begin
		reg_dtack <= 1'b1;
		ENABLE <= 1'b1;
//		ROM_DECODE <= 1'b1;
	end
	else begin
		if( A[23:4] == 20'hFFFE0 ) begin
//		if( A[23:4] == 20'hFFFE1 ) begin
			if( A[3:1] == 3'h7 ) begin // fffe0e
				ROM_DECODE <= 1'b0;
				reg_dtack <= 1'b0;
			end
			else if(  A[3:1] == 3'h6 ) begin // fffe0c
				ALLOWFAST <= 1'b1;
				reg_dtack <= 1'b0;
			end
			else if(  A[3:1] == 3'h5 ) begin // fffe0a
				ALLOWFAST <= 1'b0;
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

wire altram_access =  ENABLE | ( A[23:22] != 2'b01 && A[23:22] != 2'b10 );
wire rom_access = ROM_DECODE | ( A[23:20] != 4'he & A[23:3] != 'd0 );
wire altram_access_int =  AS_INT | ( altram_access & rom_access );
wire [3:0] REWRITE_A2320 = rom_access ? A[23:20] : 4'hB;

reg PSG_DTACK;
always @( negedge DTACK ) begin
	PSG_DTACK <= ( A[23:8] != 16'hFF88 );
end

wire TOS206 = rom_access ? AS_COMBINED | ( ( A[23:20] != 4'he ) & ( A[23:3] != 21'h0 ) ) : 1'b1;
reg [1:0] dtack_tos206 = 1'b1;
always @( negedge CLKOSC ) begin
	if( AS_COMBINED )
		dtack_tos206 <= 2'b11;
	else
		dtack_tos206 <= {dtack_tos206[0],TOS206};
end


nouveau_sdram sdram(
	.CLK(RAMCLK),
//	.RST(RST_IN),
	.RST(RST),
	
	.AS( altram_access_int ),
	.UDS(UDS),
	.LDS(LDS),
	.RW(RW),
	
	.A( { REWRITE_A2320, A[19:1] } ),
//	.A( A[23:1] ),
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

reg [7:0] BGK_D = 'hff;
always @( negedge AS_INT or negedge BGK ) begin
	if( ~BGK )
		BGK_D <= 'd0;
	else
		BGK_D <= { BGK_D[6:0], 1'b1 };
end


wire SLOW = ALLOWFAST ? BR & BGK & /*PSG_DTACK & */( AS_INT | ~altram_access_int ) : 1'b0;
wire CLK_OUT_INT;
clockmux mod_clock ( 
	.clk0( CLKOSC_4 ),
//	.clk1( ~CLK8 ),
	.clk1( ~CLK_D[shift-1] ),
	.select( SLOW ), // high = clk0
	.active0( FASTACTIVE ),
	.active1( SLOWACTIVE ),
	.out_clock( CLK_OUT_INT )
);


/* assignments */
assign DTACK = (BGK | (sdram_valid & dtack_tos206) )  ? 1'bz : 1'b0;

//assign AS_INT = BGK ? 1'bz : AS;

wire newas = altram_access_int ? AS_INT : 1'b1;
assign AS = BGK ? newas : 1'bz;
assign DTACK_INT = (~altram_access_int|DTACK) & reg_dtack & sdram_valid & dtack_tos206;

assign BERR = 1'bz;// BGK | altram_access_ext  ? 1'bz : 1'b0;

assign RAMCLK = CLKOSC;
assign CLKOUT = ~CLK_OUT_INT;
//assign CLKOUT = CLK_D[shift-1];

assign E = BGK ? E_INT : 1'bz;
assign VMA = BGK ? VMA_INT : 1'bz;

assign CKE = cke;
assign DQM[1:0] = dqm;
assign BA[1:0] = ba;
assign MA[12:0] = ma;
assign RAMWE = ramwe;
assign CAS = cas;
assign RAS = ras;

reg boe;
always @( negedge CLKOUT )
	boe <= altram_access_int;
assign BOE = boe;

//wire screen = ~RW & ~AS_INT & A[23:1] == 23'h7FC101; // upper 23 bits of the mid screen address register
assign BR = TP[2];

assign TP[1] = CKE;
assign TP[2] = 1'bz; //TOS206 ? 1'bz : 1'b0;
assign TP[3] = altram_access_int;
assign TP[4] = ras;
assign TP[5] = cas;

assign LED = sdram_valid;

endmodule

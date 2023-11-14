// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov 14 14:36:46 2023
// Host        : stavros running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/sstat/OneDrive/Documents/GitHub/Digital-Circuit-Lab/project_1/project_1.sim/sim_2/impl/timing/xsim/PartB_tb_time_impl.v
// Design      : FourDigitLEDdriver
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "263635cb" *) 
(* NotValidForBitStream *)
module FourDigitLEDdriver
   (reset,
    clk,
    an3,
    an2,
    an1,
    an0,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    dp,
    test);
  input reset;
  input clk;
  output an3;
  output an2;
  output an1;
  output an0;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output dp;
  output test;

  wire CLKFBIN;
  wire a;
  wire an0;
  wire an0_OBUF;
  wire an1;
  wire an1_OBUF;
  wire an2;
  wire an2_OBUF;
  wire an3;
  wire an3_OBUF;
  wire b;
  wire c;
  wire c_OBUF;
  wire clk;
  wire clk_IBUF;
  wire [0:0]count0;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire [3:0]count_reg__0;
  wire d;
  wire d_OBUF;
  wire dp;
  wire e;
  wire e_OBUF;
  wire f;
  wire f_OBUF;
  wire g;
  wire g_OBUF;
  wire reset;
  wire reset_IBUF;
  wire test;
  wire test_OBUF;
  wire test_OBUF_BUFG;
  wire NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_MMCME2_BASE_inst_DO_UNCONNECTED;

initial begin
 $sdf_annotate("PartB_tb_time_impl.sdf",,,,"tool_control");
end
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  (* XILINX_LEGACY_PRIM = "MMCME2_BASE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(6.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE_F(1.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(120),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    MMCME2_BASE_inst
       (.CLKFBIN(CLKFBIN),
        .CLKFBOUT(CLKFBIN),
        .CLKFBOUTB(NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_IBUF),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(NLW_MMCME2_BASE_inst_CLKOUT0_UNCONNECTED),
        .CLKOUT0B(NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(test_OBUF),
        .CLKOUT1B(NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_MMCME2_BASE_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
  OBUF a_OBUF_inst
       (.I(d_OBUF),
        .O(a));
  LUT4 #(
    .INIT(16'hF5D7)) 
    a_OBUF_inst_i_1
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[1]),
        .O(d_OBUF));
  OBUF an0_OBUF_inst
       (.I(an0_OBUF),
        .O(an0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    an0_OBUF_inst_i_1
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[3]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[0]),
        .O(an0_OBUF));
  OBUF an1_OBUF_inst
       (.I(an1_OBUF),
        .O(an1));
  LUT4 #(
    .INIT(16'hEFFF)) 
    an1_OBUF_inst_i_1
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[2]),
        .O(an1_OBUF));
  OBUF an2_OBUF_inst
       (.I(an2_OBUF),
        .O(an2));
  LUT4 #(
    .INIT(16'hEFFF)) 
    an2_OBUF_inst_i_1
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[3]),
        .O(an2_OBUF));
  OBUF an3_OBUF_inst
       (.I(an3_OBUF),
        .O(an3));
  LUT4 #(
    .INIT(16'hBFFF)) 
    an3_OBUF_inst_i_1
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[3]),
        .I3(count_reg__0[2]),
        .O(an3_OBUF));
  OBUF b_OBUF_inst
       (.I(1'b1),
        .O(b));
  OBUF c_OBUF_inst
       (.I(c_OBUF),
        .O(c));
  LUT4 #(
    .INIT(16'hCFDB)) 
    c_OBUF_inst_i_1
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[3]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[1]),
        .O(c_OBUF));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg__0[0]),
        .O(count0));
  LUT2 #(
    .INIT(4'h9)) 
    \count[1]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .O(\count[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \count[2]_i_1 
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[2]),
        .O(\count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE01)) 
    \count[3]_i_1 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[3]),
        .O(\count[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[0] 
       (.C(test_OBUF_BUFG),
        .CE(1'b1),
        .D(count0),
        .Q(count_reg__0[0]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[1] 
       (.C(test_OBUF_BUFG),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_reg__0[1]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[2] 
       (.C(test_OBUF_BUFG),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg__0[2]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \count_reg[3] 
       (.C(test_OBUF_BUFG),
        .CE(1'b1),
        .D(\count[3]_i_1_n_0 ),
        .Q(count_reg__0[3]),
        .S(reset_IBUF));
  OBUF d_OBUF_inst
       (.I(d_OBUF),
        .O(d));
  OBUF dp_OBUF_inst
       (.I(1'b0),
        .O(dp));
  OBUF e_OBUF_inst
       (.I(e_OBUF),
        .O(e));
  LUT3 #(
    .INIT(8'hC9)) 
    e_OBUF_inst_i_1
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[2]),
        .I2(count_reg__0[1]),
        .O(e_OBUF));
  OBUF f_OBUF_inst
       (.I(f_OBUF),
        .O(f));
  LUT4 #(
    .INIT(16'hA081)) 
    f_OBUF_inst_i_1
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[2]),
        .I3(count_reg__0[1]),
        .O(f_OBUF));
  OBUF g_OBUF_inst
       (.I(g_OBUF),
        .O(g));
  LUT4 #(
    .INIT(16'h0F1E)) 
    g_OBUF_inst_i_1
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[2]),
        .I2(count_reg__0[3]),
        .I3(count_reg__0[0]),
        .O(g_OBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  BUFG test_OBUF_BUFG_inst
       (.I(test_OBUF),
        .O(test_OBUF_BUFG));
  OBUF test_OBUF_inst
       (.I(test_OBUF_BUFG),
        .O(test));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

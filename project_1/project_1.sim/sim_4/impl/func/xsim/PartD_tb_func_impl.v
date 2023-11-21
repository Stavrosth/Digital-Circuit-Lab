// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Nov 16 19:11:26 2023
// Host        : dell-free running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/sstat/Documents/GitHub/Digital-Circuit-Lab/project_1/project_1.sim/sim_4/impl/func/xsim/PartD_tb_func_impl.v
// Design      : AutoRotate
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "28ee7ea6" *) 
(* NotValidForBitStream *)
module AutoRotate
   (clk,
    reset,
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
    dp);
  input clk;
  input reset;
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

  wire CLKFBIN;
  wire a;
  wire a_OBUF;
  wire a_OBUF_inst_i_2_n_0;
  wire a_OBUF_inst_i_3_n_0;
  wire a_OBUF_inst_i_4_n_0;
  wire an0;
  wire an0_OBUF;
  wire an1;
  wire an1_OBUF;
  wire an2;
  wire an2_OBUF;
  wire an3;
  wire an3_OBUF;
  wire b;
  wire b_OBUF;
  wire \big_counter[0]_i_10_n_0 ;
  wire \big_counter[0]_i_11_n_0 ;
  wire \big_counter[0]_i_1_n_0 ;
  wire \big_counter[0]_i_3_n_0 ;
  wire \big_counter[0]_i_4_n_0 ;
  wire \big_counter[0]_i_5_n_0 ;
  wire \big_counter[0]_i_6_n_0 ;
  wire \big_counter[0]_i_7_n_0 ;
  wire \big_counter[0]_i_8_n_0 ;
  wire \big_counter[0]_i_9_n_0 ;
  wire \big_counter[12]_i_2_n_0 ;
  wire \big_counter[12]_i_3_n_0 ;
  wire \big_counter[12]_i_4_n_0 ;
  wire \big_counter[12]_i_5_n_0 ;
  wire \big_counter[16]_i_2_n_0 ;
  wire \big_counter[16]_i_3_n_0 ;
  wire \big_counter[16]_i_4_n_0 ;
  wire \big_counter[16]_i_5_n_0 ;
  wire \big_counter[20]_i_2_n_0 ;
  wire \big_counter[20]_i_3_n_0 ;
  wire \big_counter[20]_i_4_n_0 ;
  wire \big_counter[4]_i_2_n_0 ;
  wire \big_counter[4]_i_3_n_0 ;
  wire \big_counter[4]_i_4_n_0 ;
  wire \big_counter[4]_i_5_n_0 ;
  wire \big_counter[8]_i_2_n_0 ;
  wire \big_counter[8]_i_3_n_0 ;
  wire \big_counter[8]_i_4_n_0 ;
  wire \big_counter[8]_i_5_n_0 ;
  wire [22:0]big_counter_reg;
  wire \big_counter_reg[0]_i_2_n_0 ;
  wire \big_counter_reg[0]_i_2_n_4 ;
  wire \big_counter_reg[0]_i_2_n_5 ;
  wire \big_counter_reg[0]_i_2_n_6 ;
  wire \big_counter_reg[0]_i_2_n_7 ;
  wire \big_counter_reg[12]_i_1_n_0 ;
  wire \big_counter_reg[12]_i_1_n_4 ;
  wire \big_counter_reg[12]_i_1_n_5 ;
  wire \big_counter_reg[12]_i_1_n_6 ;
  wire \big_counter_reg[12]_i_1_n_7 ;
  wire \big_counter_reg[16]_i_1_n_0 ;
  wire \big_counter_reg[16]_i_1_n_4 ;
  wire \big_counter_reg[16]_i_1_n_5 ;
  wire \big_counter_reg[16]_i_1_n_6 ;
  wire \big_counter_reg[16]_i_1_n_7 ;
  wire \big_counter_reg[20]_i_1_n_5 ;
  wire \big_counter_reg[20]_i_1_n_6 ;
  wire \big_counter_reg[20]_i_1_n_7 ;
  wire \big_counter_reg[4]_i_1_n_0 ;
  wire \big_counter_reg[4]_i_1_n_4 ;
  wire \big_counter_reg[4]_i_1_n_5 ;
  wire \big_counter_reg[4]_i_1_n_6 ;
  wire \big_counter_reg[4]_i_1_n_7 ;
  wire \big_counter_reg[8]_i_1_n_0 ;
  wire \big_counter_reg[8]_i_1_n_4 ;
  wire \big_counter_reg[8]_i_1_n_5 ;
  wire \big_counter_reg[8]_i_1_n_6 ;
  wire \big_counter_reg[8]_i_1_n_7 ;
  wire c;
  wire c_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_out;
  wire clk_out_BUFG;
  wire [3:1]count_anodes0;
  wire \count_anodes[0]_i_1_n_0 ;
  wire [3:0]count_anodes_reg__0;
  wire d;
  wire d_OBUF;
  wire dp;
  wire e;
  wire e_OBUF;
  wire f;
  wire f_OBUF;
  wire g;
  wire g_OBUF;
  wire [3:0]p_0_in;
  wire pointer;
  wire \pointer[3]_i_3_n_0 ;
  wire [3:0]pointer_reg__0;
  wire reset;
  wire reset_IBUF;
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
  wire [2:0]\NLW_big_counter_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_big_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_big_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_big_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_big_counter_reg[20]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_big_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_big_counter_reg[8]_i_1_CO_UNCONNECTED ;

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
        .CLKOUT1(clk_out),
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
       (.I(a_OBUF),
        .O(a));
  LUT5 #(
    .INIT(32'h18E10006)) 
    a_OBUF_inst_i_1
       (.I0(pointer_reg__0[2]),
        .I1(a_OBUF_inst_i_2_n_0),
        .I2(pointer_reg__0[3]),
        .I3(a_OBUF_inst_i_3_n_0),
        .I4(a_OBUF_inst_i_4_n_0),
        .O(a_OBUF));
  LUT6 #(
    .INIT(64'h222BBBB822222228)) 
    a_OBUF_inst_i_2
       (.I0(pointer_reg__0[1]),
        .I1(count_anodes_reg__0[3]),
        .I2(count_anodes_reg__0[0]),
        .I3(count_anodes_reg__0[1]),
        .I4(count_anodes_reg__0[2]),
        .I5(pointer_reg__0[0]),
        .O(a_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h9995666AAAA95556)) 
    a_OBUF_inst_i_3
       (.I0(pointer_reg__0[1]),
        .I1(count_anodes_reg__0[2]),
        .I2(count_anodes_reg__0[1]),
        .I3(count_anodes_reg__0[0]),
        .I4(count_anodes_reg__0[3]),
        .I5(pointer_reg__0[0]),
        .O(a_OBUF_inst_i_3_n_0));
  LUT4 #(
    .INIT(16'hE11E)) 
    a_OBUF_inst_i_4
       (.I0(count_anodes_reg__0[0]),
        .I1(count_anodes_reg__0[1]),
        .I2(count_anodes_reg__0[2]),
        .I3(pointer_reg__0[0]),
        .O(a_OBUF_inst_i_4_n_0));
  OBUF an0_OBUF_inst
       (.I(an0_OBUF),
        .O(an0));
  LUT4 #(
    .INIT(16'hFFFB)) 
    an0_OBUF_inst_i_1
       (.I0(count_anodes_reg__0[0]),
        .I1(count_anodes_reg__0[1]),
        .I2(count_anodes_reg__0[2]),
        .I3(count_anodes_reg__0[3]),
        .O(an0_OBUF));
  OBUF an1_OBUF_inst
       (.I(an1_OBUF),
        .O(an1));
  LUT4 #(
    .INIT(16'hFFDF)) 
    an1_OBUF_inst_i_1
       (.I0(count_anodes_reg__0[2]),
        .I1(count_anodes_reg__0[0]),
        .I2(count_anodes_reg__0[1]),
        .I3(count_anodes_reg__0[3]),
        .O(an1_OBUF));
  OBUF an2_OBUF_inst
       (.I(an2_OBUF),
        .O(an2));
  LUT4 #(
    .INIT(16'hFBFF)) 
    an2_OBUF_inst_i_1
       (.I0(count_anodes_reg__0[0]),
        .I1(count_anodes_reg__0[1]),
        .I2(count_anodes_reg__0[2]),
        .I3(count_anodes_reg__0[3]),
        .O(an2_OBUF));
  OBUF an3_OBUF_inst
       (.I(an3_OBUF),
        .O(an3));
  LUT4 #(
    .INIT(16'hDFFF)) 
    an3_OBUF_inst_i_1
       (.I0(count_anodes_reg__0[2]),
        .I1(count_anodes_reg__0[0]),
        .I2(count_anodes_reg__0[1]),
        .I3(count_anodes_reg__0[3]),
        .O(an3_OBUF));
  OBUF b_OBUF_inst
       (.I(b_OBUF),
        .O(b));
  LUT5 #(
    .INIT(32'h78066660)) 
    b_OBUF_inst_i_1
       (.I0(pointer_reg__0[2]),
        .I1(a_OBUF_inst_i_2_n_0),
        .I2(pointer_reg__0[3]),
        .I3(a_OBUF_inst_i_3_n_0),
        .I4(a_OBUF_inst_i_4_n_0),
        .O(b_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \big_counter[0]_i_1 
       (.I0(\big_counter[0]_i_3_n_0 ),
        .I1(\big_counter[0]_i_4_n_0 ),
        .I2(\big_counter[0]_i_5_n_0 ),
        .I3(\big_counter[0]_i_6_n_0 ),
        .I4(\big_counter[0]_i_7_n_0 ),
        .I5(reset_IBUF),
        .O(\big_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[0]_i_10 
       (.I0(big_counter_reg[1]),
        .O(\big_counter[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[0]_i_11 
       (.I0(big_counter_reg[0]),
        .O(\big_counter[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \big_counter[0]_i_3 
       (.I0(big_counter_reg[2]),
        .I1(big_counter_reg[1]),
        .I2(big_counter_reg[5]),
        .I3(big_counter_reg[4]),
        .O(\big_counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \big_counter[0]_i_4 
       (.I0(big_counter_reg[9]),
        .I1(big_counter_reg[8]),
        .I2(big_counter_reg[7]),
        .I3(big_counter_reg[6]),
        .O(\big_counter[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \big_counter[0]_i_5 
       (.I0(big_counter_reg[13]),
        .I1(big_counter_reg[12]),
        .I2(big_counter_reg[11]),
        .I3(big_counter_reg[10]),
        .O(\big_counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \big_counter[0]_i_6 
       (.I0(big_counter_reg[14]),
        .I1(big_counter_reg[16]),
        .I2(big_counter_reg[17]),
        .I3(big_counter_reg[18]),
        .I4(big_counter_reg[22]),
        .I5(big_counter_reg[21]),
        .O(\big_counter[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \big_counter[0]_i_7 
       (.I0(big_counter_reg[0]),
        .I1(big_counter_reg[3]),
        .I2(big_counter_reg[15]),
        .I3(big_counter_reg[20]),
        .I4(big_counter_reg[19]),
        .O(\big_counter[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[0]_i_8 
       (.I0(big_counter_reg[3]),
        .O(\big_counter[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[0]_i_9 
       (.I0(big_counter_reg[2]),
        .O(\big_counter[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[12]_i_2 
       (.I0(big_counter_reg[15]),
        .O(\big_counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[12]_i_3 
       (.I0(big_counter_reg[14]),
        .O(\big_counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[12]_i_4 
       (.I0(big_counter_reg[13]),
        .O(\big_counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[12]_i_5 
       (.I0(big_counter_reg[12]),
        .O(\big_counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[16]_i_2 
       (.I0(big_counter_reg[19]),
        .O(\big_counter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[16]_i_3 
       (.I0(big_counter_reg[18]),
        .O(\big_counter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[16]_i_4 
       (.I0(big_counter_reg[17]),
        .O(\big_counter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[16]_i_5 
       (.I0(big_counter_reg[16]),
        .O(\big_counter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[20]_i_2 
       (.I0(big_counter_reg[22]),
        .O(\big_counter[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[20]_i_3 
       (.I0(big_counter_reg[21]),
        .O(\big_counter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[20]_i_4 
       (.I0(big_counter_reg[20]),
        .O(\big_counter[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[4]_i_2 
       (.I0(big_counter_reg[7]),
        .O(\big_counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[4]_i_3 
       (.I0(big_counter_reg[6]),
        .O(\big_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[4]_i_4 
       (.I0(big_counter_reg[5]),
        .O(\big_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[4]_i_5 
       (.I0(big_counter_reg[4]),
        .O(\big_counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[8]_i_2 
       (.I0(big_counter_reg[11]),
        .O(\big_counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[8]_i_3 
       (.I0(big_counter_reg[10]),
        .O(\big_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[8]_i_4 
       (.I0(big_counter_reg[9]),
        .O(\big_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[8]_i_5 
       (.I0(big_counter_reg[8]),
        .O(\big_counter[8]_i_5_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[0] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[0]_i_2_n_7 ),
        .Q(big_counter_reg[0]),
        .S(\big_counter[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\big_counter_reg[0]_i_2_n_0 ,\NLW_big_counter_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\big_counter_reg[0]_i_2_n_4 ,\big_counter_reg[0]_i_2_n_5 ,\big_counter_reg[0]_i_2_n_6 ,\big_counter_reg[0]_i_2_n_7 }),
        .S({\big_counter[0]_i_8_n_0 ,\big_counter[0]_i_9_n_0 ,\big_counter[0]_i_10_n_0 ,\big_counter[0]_i_11_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[10] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[8]_i_1_n_5 ),
        .Q(big_counter_reg[10]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[11] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[8]_i_1_n_4 ),
        .Q(big_counter_reg[11]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[12] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[12]_i_1_n_7 ),
        .Q(big_counter_reg[12]),
        .S(\big_counter[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[12]_i_1 
       (.CI(\big_counter_reg[8]_i_1_n_0 ),
        .CO({\big_counter_reg[12]_i_1_n_0 ,\NLW_big_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\big_counter_reg[12]_i_1_n_4 ,\big_counter_reg[12]_i_1_n_5 ,\big_counter_reg[12]_i_1_n_6 ,\big_counter_reg[12]_i_1_n_7 }),
        .S({\big_counter[12]_i_2_n_0 ,\big_counter[12]_i_3_n_0 ,\big_counter[12]_i_4_n_0 ,\big_counter[12]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[13] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[12]_i_1_n_6 ),
        .Q(big_counter_reg[13]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[14] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[12]_i_1_n_5 ),
        .Q(big_counter_reg[14]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[15] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[12]_i_1_n_4 ),
        .Q(big_counter_reg[15]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[16] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[16]_i_1_n_7 ),
        .Q(big_counter_reg[16]),
        .S(\big_counter[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[16]_i_1 
       (.CI(\big_counter_reg[12]_i_1_n_0 ),
        .CO({\big_counter_reg[16]_i_1_n_0 ,\NLW_big_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\big_counter_reg[16]_i_1_n_4 ,\big_counter_reg[16]_i_1_n_5 ,\big_counter_reg[16]_i_1_n_6 ,\big_counter_reg[16]_i_1_n_7 }),
        .S({\big_counter[16]_i_2_n_0 ,\big_counter[16]_i_3_n_0 ,\big_counter[16]_i_4_n_0 ,\big_counter[16]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[17] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[16]_i_1_n_6 ),
        .Q(big_counter_reg[17]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[18] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[16]_i_1_n_5 ),
        .Q(big_counter_reg[18]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[19] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[16]_i_1_n_4 ),
        .Q(big_counter_reg[19]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[1] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[0]_i_2_n_6 ),
        .Q(big_counter_reg[1]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[20] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[20]_i_1_n_7 ),
        .Q(big_counter_reg[20]),
        .S(\big_counter[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[20]_i_1 
       (.CI(\big_counter_reg[16]_i_1_n_0 ),
        .CO(\NLW_big_counter_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O({\NLW_big_counter_reg[20]_i_1_O_UNCONNECTED [3],\big_counter_reg[20]_i_1_n_5 ,\big_counter_reg[20]_i_1_n_6 ,\big_counter_reg[20]_i_1_n_7 }),
        .S({1'b0,\big_counter[20]_i_2_n_0 ,\big_counter[20]_i_3_n_0 ,\big_counter[20]_i_4_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[21] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[20]_i_1_n_6 ),
        .Q(big_counter_reg[21]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[22] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[20]_i_1_n_5 ),
        .Q(big_counter_reg[22]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[2] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[0]_i_2_n_5 ),
        .Q(big_counter_reg[2]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[3] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[0]_i_2_n_4 ),
        .Q(big_counter_reg[3]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[4] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[4]_i_1_n_7 ),
        .Q(big_counter_reg[4]),
        .S(\big_counter[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[4]_i_1 
       (.CI(\big_counter_reg[0]_i_2_n_0 ),
        .CO({\big_counter_reg[4]_i_1_n_0 ,\NLW_big_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\big_counter_reg[4]_i_1_n_4 ,\big_counter_reg[4]_i_1_n_5 ,\big_counter_reg[4]_i_1_n_6 ,\big_counter_reg[4]_i_1_n_7 }),
        .S({\big_counter[4]_i_2_n_0 ,\big_counter[4]_i_3_n_0 ,\big_counter[4]_i_4_n_0 ,\big_counter[4]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[5] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[4]_i_1_n_6 ),
        .Q(big_counter_reg[5]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[6] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[4]_i_1_n_5 ),
        .Q(big_counter_reg[6]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[7] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[4]_i_1_n_4 ),
        .Q(big_counter_reg[7]),
        .S(\big_counter[0]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[8] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[8]_i_1_n_7 ),
        .Q(big_counter_reg[8]),
        .S(\big_counter[0]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[8]_i_1 
       (.CI(\big_counter_reg[4]_i_1_n_0 ),
        .CO({\big_counter_reg[8]_i_1_n_0 ,\NLW_big_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\big_counter_reg[8]_i_1_n_4 ,\big_counter_reg[8]_i_1_n_5 ,\big_counter_reg[8]_i_1_n_6 ,\big_counter_reg[8]_i_1_n_7 }),
        .S({\big_counter[8]_i_2_n_0 ,\big_counter[8]_i_3_n_0 ,\big_counter[8]_i_4_n_0 ,\big_counter[8]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[9] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter_reg[8]_i_1_n_6 ),
        .Q(big_counter_reg[9]),
        .S(\big_counter[0]_i_1_n_0 ));
  OBUF c_OBUF_inst
       (.I(c_OBUF),
        .O(c));
  LUT5 #(
    .INIT(32'h6E060100)) 
    c_OBUF_inst_i_1
       (.I0(pointer_reg__0[2]),
        .I1(a_OBUF_inst_i_2_n_0),
        .I2(a_OBUF_inst_i_4_n_0),
        .I3(a_OBUF_inst_i_3_n_0),
        .I4(pointer_reg__0[3]),
        .O(c_OBUF));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  BUFG clk_out_BUFG_inst
       (.I(clk_out),
        .O(clk_out_BUFG));
  LUT1 #(
    .INIT(2'h1)) 
    \count_anodes[0]_i_1 
       (.I0(count_anodes_reg__0[0]),
        .O(\count_anodes[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \count_anodes[1]_i_1 
       (.I0(count_anodes_reg__0[0]),
        .I1(count_anodes_reg__0[1]),
        .O(count_anodes0[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \count_anodes[2]_i_1 
       (.I0(count_anodes_reg__0[2]),
        .I1(count_anodes_reg__0[1]),
        .I2(count_anodes_reg__0[0]),
        .O(count_anodes0[2]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \count_anodes[3]_i_1 
       (.I0(count_anodes_reg__0[3]),
        .I1(count_anodes_reg__0[0]),
        .I2(count_anodes_reg__0[1]),
        .I3(count_anodes_reg__0[2]),
        .O(count_anodes0[3]));
  FDSE #(
    .INIT(1'b1)) 
    \count_anodes_reg[0] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\count_anodes[0]_i_1_n_0 ),
        .Q(count_anodes_reg__0[0]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \count_anodes_reg[1] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(count_anodes0[1]),
        .Q(count_anodes_reg__0[1]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \count_anodes_reg[2] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(count_anodes0[2]),
        .Q(count_anodes_reg__0[2]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \count_anodes_reg[3] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(count_anodes0[3]),
        .Q(count_anodes_reg__0[3]),
        .S(reset_IBUF));
  OBUF d_OBUF_inst
       (.I(d_OBUF),
        .O(d));
  LUT5 #(
    .INIT(32'h3C428114)) 
    d_OBUF_inst_i_1
       (.I0(pointer_reg__0[3]),
        .I1(a_OBUF_inst_i_2_n_0),
        .I2(pointer_reg__0[2]),
        .I3(a_OBUF_inst_i_4_n_0),
        .I4(a_OBUF_inst_i_3_n_0),
        .O(d_OBUF));
  OBUF dp_OBUF_inst
       (.I(1'b1),
        .O(dp));
  OBUF e_OBUF_inst
       (.I(e_OBUF),
        .O(e));
  LUT5 #(
    .INIT(32'hB0515170)) 
    e_OBUF_inst_i_1
       (.I0(pointer_reg__0[3]),
        .I1(a_OBUF_inst_i_3_n_0),
        .I2(a_OBUF_inst_i_4_n_0),
        .I3(pointer_reg__0[2]),
        .I4(a_OBUF_inst_i_2_n_0),
        .O(e_OBUF));
  OBUF f_OBUF_inst
       (.I(f_OBUF),
        .O(f));
  LUT5 #(
    .INIT(32'h8781E100)) 
    f_OBUF_inst_i_1
       (.I0(pointer_reg__0[2]),
        .I1(a_OBUF_inst_i_2_n_0),
        .I2(pointer_reg__0[3]),
        .I3(a_OBUF_inst_i_4_n_0),
        .I4(a_OBUF_inst_i_3_n_0),
        .O(f_OBUF));
  OBUF g_OBUF_inst
       (.I(g_OBUF),
        .O(g));
  LUT5 #(
    .INIT(32'h060081E1)) 
    g_OBUF_inst_i_1
       (.I0(pointer_reg__0[2]),
        .I1(a_OBUF_inst_i_2_n_0),
        .I2(pointer_reg__0[3]),
        .I3(a_OBUF_inst_i_4_n_0),
        .I4(a_OBUF_inst_i_3_n_0),
        .O(g_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pointer[0]_i_1 
       (.I0(pointer_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pointer[1]_i_1 
       (.I0(pointer_reg__0[0]),
        .I1(pointer_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \pointer[2]_i_1 
       (.I0(pointer_reg__0[1]),
        .I1(pointer_reg__0[0]),
        .I2(pointer_reg__0[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \pointer[3]_i_1 
       (.I0(\pointer[3]_i_3_n_0 ),
        .I1(\big_counter[0]_i_6_n_0 ),
        .I2(\big_counter[0]_i_5_n_0 ),
        .I3(\big_counter[0]_i_4_n_0 ),
        .I4(\big_counter[0]_i_3_n_0 ),
        .O(pointer));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \pointer[3]_i_2 
       (.I0(pointer_reg__0[2]),
        .I1(pointer_reg__0[0]),
        .I2(pointer_reg__0[1]),
        .I3(pointer_reg__0[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \pointer[3]_i_3 
       (.I0(big_counter_reg[0]),
        .I1(big_counter_reg[3]),
        .I2(big_counter_reg[15]),
        .I3(big_counter_reg[20]),
        .I4(big_counter_reg[19]),
        .O(\pointer[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pointer_reg[0] 
       (.C(clk_out_BUFG),
        .CE(pointer),
        .D(p_0_in[0]),
        .Q(pointer_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pointer_reg[1] 
       (.C(clk_out_BUFG),
        .CE(pointer),
        .D(p_0_in[1]),
        .Q(pointer_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pointer_reg[2] 
       (.C(clk_out_BUFG),
        .CE(pointer),
        .D(p_0_in[2]),
        .Q(pointer_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pointer_reg[3] 
       (.C(clk_out_BUFG),
        .CE(pointer),
        .D(p_0_in[3]),
        .Q(pointer_reg__0[3]),
        .R(1'b0));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
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

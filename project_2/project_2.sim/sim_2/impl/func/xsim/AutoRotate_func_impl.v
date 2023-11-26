// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Nov 22 02:26:09 2023
// Host        : stavros running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/sstat/OneDrive/Documents/GitHub/Digital-Circuit-Lab/project_2/project_2.sim/sim_2/impl/func/xsim/AutoRotate_func_impl.v
// Design      : AutoRotate
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "9c0807da" *) 
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
  wire \big_counter[0]_i_1_n_0 ;
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
  wire \big_counter[20]_i_5_n_0 ;
  wire \big_counter[22]_i_10_n_0 ;
  wire \big_counter[22]_i_1_n_0 ;
  wire \big_counter[22]_i_4_n_0 ;
  wire \big_counter[22]_i_5_n_0 ;
  wire \big_counter[22]_i_6_n_0 ;
  wire \big_counter[22]_i_7_n_0 ;
  wire \big_counter[22]_i_8_n_0 ;
  wire \big_counter[22]_i_9_n_0 ;
  wire \big_counter[4]_i_2_n_0 ;
  wire \big_counter[4]_i_3_n_0 ;
  wire \big_counter[4]_i_4_n_0 ;
  wire \big_counter[4]_i_5_n_0 ;
  wire \big_counter[8]_i_2_n_0 ;
  wire \big_counter[8]_i_3_n_0 ;
  wire \big_counter[8]_i_4_n_0 ;
  wire \big_counter[8]_i_5_n_0 ;
  wire \big_counter_reg[12]_i_1_n_0 ;
  wire \big_counter_reg[16]_i_1_n_0 ;
  wire \big_counter_reg[20]_i_1_n_0 ;
  wire \big_counter_reg[4]_i_1_n_0 ;
  wire \big_counter_reg[8]_i_1_n_0 ;
  wire \big_counter_reg_n_0_[0] ;
  wire c;
  wire c_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_out;
  wire clk_out_BUFG;
  wire [3:2]count_anodes0;
  wire \count_anodes[0]_i_1_n_0 ;
  wire \count_anodes[1]_i_1_n_0 ;
  wire [3:0]count_anodes_reg__0;
  wire d;
  wire d_OBUF;
  wire [22:1]data0;
  wire dp;
  wire e;
  wire e_OBUF;
  wire f;
  wire f_OBUF;
  wire g;
  wire g_OBUF;
  wire [21:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire p_1_out;
  wire [3:0]pointer_reg__0;
  wire reset;
  wire reset1;
  wire reset2;
  wire reset3;
  wire reset_IBUF;
  wire sel;
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
  wire [2:0]\NLW_big_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_big_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_big_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_big_counter_reg[22]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_big_counter_reg[22]_i_3_O_UNCONNECTED ;
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
    .INIT(32'h40088994)) 
    a_OBUF_inst_i_1
       (.I0(pointer_reg__0[3]),
        .I1(a_OBUF_inst_i_2_n_0),
        .I2(pointer_reg__0[2]),
        .I3(a_OBUF_inst_i_3_n_0),
        .I4(a_OBUF_inst_i_4_n_0),
        .O(a_OBUF));
  LUT4 #(
    .INIT(16'hA956)) 
    a_OBUF_inst_i_2
       (.I0(pointer_reg__0[0]),
        .I1(count_anodes_reg__0[1]),
        .I2(count_anodes_reg__0[0]),
        .I3(count_anodes_reg__0[2]),
        .O(a_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h22B222B222B2B288)) 
    a_OBUF_inst_i_3
       (.I0(pointer_reg__0[1]),
        .I1(count_anodes_reg__0[3]),
        .I2(pointer_reg__0[0]),
        .I3(count_anodes_reg__0[2]),
        .I4(count_anodes_reg__0[0]),
        .I5(count_anodes_reg__0[1]),
        .O(a_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hC6C6C6633939399C)) 
    a_OBUF_inst_i_4
       (.I0(pointer_reg__0[0]),
        .I1(count_anodes_reg__0[3]),
        .I2(count_anodes_reg__0[2]),
        .I3(count_anodes_reg__0[1]),
        .I4(count_anodes_reg__0[0]),
        .I5(pointer_reg__0[1]),
        .O(a_OBUF_inst_i_4_n_0));
  OBUF an0_OBUF_inst
       (.I(an0_OBUF),
        .O(an0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    an0_OBUF_inst_i_1
       (.I0(count_anodes_reg__0[3]),
        .I1(count_anodes_reg__0[0]),
        .I2(count_anodes_reg__0[1]),
        .I3(count_anodes_reg__0[2]),
        .O(an0_OBUF));
  OBUF an1_OBUF_inst
       (.I(an1_OBUF),
        .O(an1));
  LUT4 #(
    .INIT(16'hFFDF)) 
    an1_OBUF_inst_i_1
       (.I0(count_anodes_reg__0[2]),
        .I1(count_anodes_reg__0[3]),
        .I2(count_anodes_reg__0[1]),
        .I3(count_anodes_reg__0[0]),
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
    .INIT(16'hFF7F)) 
    an3_OBUF_inst_i_1
       (.I0(count_anodes_reg__0[3]),
        .I1(count_anodes_reg__0[2]),
        .I2(count_anodes_reg__0[1]),
        .I3(count_anodes_reg__0[0]),
        .O(an3_OBUF));
  OBUF b_OBUF_inst
       (.I(b_OBUF),
        .O(b));
  LUT5 #(
    .INIT(32'h78660660)) 
    b_OBUF_inst_i_1
       (.I0(pointer_reg__0[2]),
        .I1(a_OBUF_inst_i_3_n_0),
        .I2(pointer_reg__0[3]),
        .I3(a_OBUF_inst_i_2_n_0),
        .I4(a_OBUF_inst_i_4_n_0),
        .O(b_OBUF));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \big_counter[0]_i_1 
       (.I0(\big_counter[22]_i_8_n_0 ),
        .I1(\big_counter[22]_i_7_n_0 ),
        .I2(\big_counter[22]_i_6_n_0 ),
        .I3(\big_counter[22]_i_5_n_0 ),
        .I4(\big_counter[22]_i_4_n_0 ),
        .I5(\big_counter_reg_n_0_[0] ),
        .O(\big_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[12]_i_2 
       (.I0(p_0_in[10]),
        .O(\big_counter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[12]_i_3 
       (.I0(p_0_in[11]),
        .O(\big_counter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[12]_i_4 
       (.I0(p_0_in[12]),
        .O(\big_counter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[12]_i_5 
       (.I0(p_0_in[13]),
        .O(\big_counter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[16]_i_2 
       (.I0(p_0_in[6]),
        .O(\big_counter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[16]_i_3 
       (.I0(p_0_in[7]),
        .O(\big_counter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[16]_i_4 
       (.I0(p_0_in[8]),
        .O(\big_counter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[16]_i_5 
       (.I0(p_0_in[9]),
        .O(\big_counter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[20]_i_2 
       (.I0(p_0_in[2]),
        .O(\big_counter[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[20]_i_3 
       (.I0(p_0_in[3]),
        .O(\big_counter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[20]_i_4 
       (.I0(p_0_in[4]),
        .O(\big_counter[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[20]_i_5 
       (.I0(p_0_in[5]),
        .O(\big_counter[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \big_counter[22]_i_1 
       (.I0(\big_counter[22]_i_4_n_0 ),
        .I1(\big_counter[22]_i_5_n_0 ),
        .I2(\big_counter[22]_i_6_n_0 ),
        .I3(\big_counter[22]_i_7_n_0 ),
        .I4(\big_counter[22]_i_8_n_0 ),
        .I5(\big_counter_reg_n_0_[0] ),
        .O(\big_counter[22]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[22]_i_10 
       (.I0(p_0_in[1]),
        .O(\big_counter[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \big_counter[22]_i_2 
       (.I0(\big_counter[22]_i_4_n_0 ),
        .I1(\big_counter[22]_i_5_n_0 ),
        .I2(\big_counter[22]_i_6_n_0 ),
        .I3(\big_counter[22]_i_7_n_0 ),
        .I4(\big_counter[22]_i_8_n_0 ),
        .I5(\big_counter_reg_n_0_[0] ),
        .O(p_1_out));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \big_counter[22]_i_4 
       (.I0(p_0_in[18]),
        .I1(p_0_in[19]),
        .I2(p_0_in[16]),
        .I3(p_0_in[17]),
        .O(\big_counter[22]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \big_counter[22]_i_5 
       (.I0(p_0_in[13]),
        .I1(p_0_in[14]),
        .I2(p_0_in[12]),
        .I3(p_0_in[15]),
        .O(\big_counter[22]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \big_counter[22]_i_6 
       (.I0(p_0_in[1]),
        .I1(p_0_in[20]),
        .I2(p_0_in[0]),
        .I3(p_0_in[21]),
        .O(\big_counter[22]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \big_counter[22]_i_7 
       (.I0(p_0_in[3]),
        .I1(p_0_in[4]),
        .I2(p_0_in[2]),
        .I3(p_0_in[5]),
        .O(\big_counter[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \big_counter[22]_i_8 
       (.I0(p_0_in[7]),
        .I1(p_0_in[8]),
        .I2(p_0_in[9]),
        .I3(p_0_in[6]),
        .I4(p_0_in[11]),
        .I5(p_0_in[10]),
        .O(\big_counter[22]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[22]_i_9 
       (.I0(p_0_in[0]),
        .O(\big_counter[22]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[4]_i_2 
       (.I0(p_0_in[18]),
        .O(\big_counter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[4]_i_3 
       (.I0(p_0_in[19]),
        .O(\big_counter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[4]_i_4 
       (.I0(p_0_in[20]),
        .O(\big_counter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[4]_i_5 
       (.I0(p_0_in[21]),
        .O(\big_counter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[8]_i_2 
       (.I0(p_0_in[14]),
        .O(\big_counter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[8]_i_3 
       (.I0(p_0_in[15]),
        .O(\big_counter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[8]_i_4 
       (.I0(p_0_in[16]),
        .O(\big_counter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \big_counter[8]_i_5 
       (.I0(p_0_in[17]),
        .O(\big_counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \big_counter_reg[0] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\big_counter[0]_i_1_n_0 ),
        .Q(\big_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[10] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[10]),
        .Q(p_0_in[12]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[11] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[11]),
        .Q(p_0_in[11]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[12] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[12]),
        .Q(p_0_in[10]),
        .S(\big_counter[22]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[12]_i_1 
       (.CI(\big_counter_reg[8]_i_1_n_0 ),
        .CO({\big_counter_reg[12]_i_1_n_0 ,\NLW_big_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({p_0_in[10],p_0_in[11],p_0_in[12],p_0_in[13]}),
        .O(data0[12:9]),
        .S({\big_counter[12]_i_2_n_0 ,\big_counter[12]_i_3_n_0 ,\big_counter[12]_i_4_n_0 ,\big_counter[12]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[13] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[13]),
        .Q(p_0_in[9]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[14] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[14]),
        .Q(p_0_in[8]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[15] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[15]),
        .Q(p_0_in[7]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[16] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[16]),
        .Q(p_0_in[6]),
        .S(\big_counter[22]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[16]_i_1 
       (.CI(\big_counter_reg[12]_i_1_n_0 ),
        .CO({\big_counter_reg[16]_i_1_n_0 ,\NLW_big_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({p_0_in[6],p_0_in[7],p_0_in[8],p_0_in[9]}),
        .O(data0[16:13]),
        .S({\big_counter[16]_i_2_n_0 ,\big_counter[16]_i_3_n_0 ,\big_counter[16]_i_4_n_0 ,\big_counter[16]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[17] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[17]),
        .Q(p_0_in[5]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[18] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[18]),
        .Q(p_0_in[4]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[19] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[19]),
        .Q(p_0_in[3]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[1] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[1]),
        .Q(p_0_in[21]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[20] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[20]),
        .Q(p_0_in[2]),
        .S(\big_counter[22]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[20]_i_1 
       (.CI(\big_counter_reg[16]_i_1_n_0 ),
        .CO({\big_counter_reg[20]_i_1_n_0 ,\NLW_big_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({p_0_in[2],p_0_in[3],p_0_in[4],p_0_in[5]}),
        .O(data0[20:17]),
        .S({\big_counter[20]_i_2_n_0 ,\big_counter[20]_i_3_n_0 ,\big_counter[20]_i_4_n_0 ,\big_counter[20]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[21] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[21]),
        .Q(p_0_in[1]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[22] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[22]),
        .Q(p_0_in[0]),
        .S(\big_counter[22]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[22]_i_3 
       (.CI(\big_counter_reg[20]_i_1_n_0 ),
        .CO(\NLW_big_counter_reg[22]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,p_0_in[1]}),
        .O({\NLW_big_counter_reg[22]_i_3_O_UNCONNECTED [3:2],data0[22:21]}),
        .S({1'b0,1'b0,\big_counter[22]_i_9_n_0 ,\big_counter[22]_i_10_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[2] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[2]),
        .Q(p_0_in[20]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[3] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[3]),
        .Q(p_0_in[19]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[4] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[4]),
        .Q(p_0_in[18]),
        .S(\big_counter[22]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\big_counter_reg[4]_i_1_n_0 ,\NLW_big_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\big_counter_reg_n_0_[0] ),
        .DI({p_0_in[18],p_0_in[19],p_0_in[20],p_0_in[21]}),
        .O(data0[4:1]),
        .S({\big_counter[4]_i_2_n_0 ,\big_counter[4]_i_3_n_0 ,\big_counter[4]_i_4_n_0 ,\big_counter[4]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[5] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[5]),
        .Q(p_0_in[17]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[6] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[6]),
        .Q(p_0_in[16]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[7] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[7]),
        .Q(p_0_in[15]),
        .S(\big_counter[22]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[8] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[8]),
        .Q(p_0_in[14]),
        .S(\big_counter[22]_i_1_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \big_counter_reg[8]_i_1 
       (.CI(\big_counter_reg[4]_i_1_n_0 ),
        .CO({\big_counter_reg[8]_i_1_n_0 ,\NLW_big_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({p_0_in[14],p_0_in[15],p_0_in[16],p_0_in[17]}),
        .O(data0[8:5]),
        .S({\big_counter[8]_i_2_n_0 ,\big_counter[8]_i_3_n_0 ,\big_counter[8]_i_4_n_0 ,\big_counter[8]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b1)) 
    \big_counter_reg[9] 
       (.C(clk_out_BUFG),
        .CE(p_1_out),
        .D(data0[9]),
        .Q(p_0_in[13]),
        .S(\big_counter[22]_i_1_n_0 ));
  OBUF c_OBUF_inst
       (.I(c_OBUF),
        .O(c));
  LUT5 #(
    .INIT(32'h2800A928)) 
    c_OBUF_inst_i_1
       (.I0(pointer_reg__0[3]),
        .I1(pointer_reg__0[2]),
        .I2(a_OBUF_inst_i_3_n_0),
        .I3(a_OBUF_inst_i_4_n_0),
        .I4(a_OBUF_inst_i_2_n_0),
        .O(c_OBUF));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
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
       (.I0(count_anodes_reg__0[1]),
        .I1(count_anodes_reg__0[0]),
        .O(\count_anodes[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \count_anodes[2]_i_1 
       (.I0(count_anodes_reg__0[2]),
        .I1(count_anodes_reg__0[0]),
        .I2(count_anodes_reg__0[1]),
        .O(count_anodes0[2]));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \count_anodes[3]_i_1 
       (.I0(count_anodes_reg__0[3]),
        .I1(count_anodes_reg__0[2]),
        .I2(count_anodes_reg__0[1]),
        .I3(count_anodes_reg__0[0]),
        .O(count_anodes0[3]));
  FDPE #(
    .INIT(1'b1)) 
    \count_anodes_reg[0] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\count_anodes[0]_i_1_n_0 ),
        .PRE(reset3),
        .Q(count_anodes_reg__0[0]));
  FDPE #(
    .INIT(1'b1)) 
    \count_anodes_reg[1] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(\count_anodes[1]_i_1_n_0 ),
        .PRE(reset3),
        .Q(count_anodes_reg__0[1]));
  FDPE #(
    .INIT(1'b1)) 
    \count_anodes_reg[2] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(count_anodes0[2]),
        .PRE(reset3),
        .Q(count_anodes_reg__0[2]));
  FDPE #(
    .INIT(1'b1)) 
    \count_anodes_reg[3] 
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(count_anodes0[3]),
        .PRE(reset3),
        .Q(count_anodes_reg__0[3]));
  OBUF d_OBUF_inst
       (.I(d_OBUF),
        .O(d));
  LUT5 #(
    .INIT(32'h3C814214)) 
    d_OBUF_inst_i_1
       (.I0(pointer_reg__0[3]),
        .I1(pointer_reg__0[2]),
        .I2(a_OBUF_inst_i_3_n_0),
        .I3(a_OBUF_inst_i_4_n_0),
        .I4(a_OBUF_inst_i_2_n_0),
        .O(d_OBUF));
  OBUF dp_OBUF_inst
       (.I(1'b1),
        .O(dp));
  OBUF e_OBUF_inst
       (.I(e_OBUF),
        .O(e));
  LUT5 #(
    .INIT(32'hC17F0014)) 
    e_OBUF_inst_i_1
       (.I0(a_OBUF_inst_i_4_n_0),
        .I1(a_OBUF_inst_i_3_n_0),
        .I2(pointer_reg__0[2]),
        .I3(pointer_reg__0[3]),
        .I4(a_OBUF_inst_i_2_n_0),
        .O(e_OBUF));
  OBUF f_OBUF_inst
       (.I(f_OBUF),
        .O(f));
  LUT5 #(
    .INIT(32'hE220088E)) 
    f_OBUF_inst_i_1
       (.I0(a_OBUF_inst_i_2_n_0),
        .I1(a_OBUF_inst_i_4_n_0),
        .I2(pointer_reg__0[2]),
        .I3(a_OBUF_inst_i_3_n_0),
        .I4(pointer_reg__0[3]),
        .O(f_OBUF));
  OBUF g_OBUF_inst
       (.I(g_OBUF),
        .O(g));
  LUT5 #(
    .INIT(32'h51100885)) 
    g_OBUF_inst_i_1
       (.I0(a_OBUF_inst_i_4_n_0),
        .I1(a_OBUF_inst_i_2_n_0),
        .I2(pointer_reg__0[2]),
        .I3(a_OBUF_inst_i_3_n_0),
        .I4(pointer_reg__0[3]),
        .O(g_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pointer[0]_i_1 
       (.I0(pointer_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pointer[1]_i_1 
       (.I0(pointer_reg__0[1]),
        .I1(pointer_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pointer[2]_i_1 
       (.I0(pointer_reg__0[2]),
        .I1(pointer_reg__0[0]),
        .I2(pointer_reg__0[1]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \pointer[3]_i_1 
       (.I0(\big_counter_reg_n_0_[0] ),
        .I1(\big_counter[22]_i_8_n_0 ),
        .I2(\big_counter[22]_i_7_n_0 ),
        .I3(\big_counter[22]_i_6_n_0 ),
        .I4(\big_counter[22]_i_5_n_0 ),
        .I5(\big_counter[22]_i_4_n_0 ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pointer[3]_i_2 
       (.I0(pointer_reg__0[3]),
        .I1(pointer_reg__0[2]),
        .I2(pointer_reg__0[1]),
        .I3(pointer_reg__0[0]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \pointer_reg[0] 
       (.C(clk_out_BUFG),
        .CE(sel),
        .D(p_0_in__0[0]),
        .Q(pointer_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pointer_reg[1] 
       (.C(clk_out_BUFG),
        .CE(sel),
        .D(p_0_in__0[1]),
        .Q(pointer_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pointer_reg[2] 
       (.C(clk_out_BUFG),
        .CE(sel),
        .D(p_0_in__0[2]),
        .Q(pointer_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pointer_reg[3] 
       (.C(clk_out_BUFG),
        .CE(sel),
        .D(p_0_in__0[3]),
        .Q(pointer_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    reset1_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(reset_IBUF),
        .Q(reset1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    reset2_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(reset1),
        .Q(reset2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    reset3_reg
       (.C(clk_out_BUFG),
        .CE(1'b1),
        .D(reset2),
        .Q(reset3),
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

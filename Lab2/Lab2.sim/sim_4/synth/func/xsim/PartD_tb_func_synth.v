// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Dec 15 21:13:47 2023
// Host        : stavros running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/sstat/OneDrive/Documents/GitHub/Digital-Circuit-Lab/Lab2/Lab2.sim/sim_4/synth/func/xsim/PartD_tb_func_synth.v
// Design      : UART
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module UART
   (clk,
    reset,
    baud_select,
    Tx_EN,
    Tx_WR,
    Tx_DATA,
    Tx_BUSY,
    Rx_EN,
    Rx_FERROR,
    Rx_PERROR,
    Rx_VALID,
    Rx_DATA);
  input clk;
  input reset;
  input [2:0]baud_select;
  input Tx_EN;
  input Tx_WR;
  input [7:0]Tx_DATA;
  output Tx_BUSY;
  input Rx_EN;
  output Rx_FERROR;
  output Rx_PERROR;
  output Rx_VALID;
  output [7:0]Rx_DATA;

  wire \A[1]_i_1_n_0 ;
  wire \A[6]_i_1_n_0 ;
  wire \A[7]_i_1_n_0 ;
  wire \A_n_0_[0] ;
  wire \A_n_0_[10] ;
  wire \A_n_0_[12] ;
  wire \A_n_0_[14] ;
  wire \A_n_0_[1] ;
  wire \A_n_0_[2] ;
  wire \A_n_0_[3] ;
  wire \A_n_0_[4] ;
  wire \A_n_0_[5] ;
  wire \A_n_0_[6] ;
  wire \A_n_0_[7] ;
  wire \A_n_0_[8] ;
  wire \A_n_0_[9] ;
  wire [7:0]Rx_DATA;
  wire [7:0]Rx_DATA_OBUF;
  wire Rx_EN;
  wire Rx_EN_IBUF;
  wire Rx_FERROR;
  wire Rx_FERROR_OBUF;
  wire Rx_PERROR;
  wire Rx_PERROR_OBUF;
  wire Rx_VALID;
  wire Rx_VALID_OBUF;
  wire Tx_BUSY;
  wire Tx_BUSY_OBUF;
  wire [7:0]Tx_DATA;
  wire [7:0]Tx_DATA_IBUF;
  wire Tx_EN;
  wire Tx_EN_IBUF;
  wire Tx_WR;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select;
  wire [2:0]baud_select_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire receiver_n_0;
  wire receiver_n_4;
  wire receiver_n_5;
  wire receiver_n_6;
  wire receiver_n_7;
  wire reset;
  wire reset_IBUF;
  wire [14:0]target_counter;
  wire [3:3]\transmit/current_state__0 ;
  wire transmitter_n_0;
  wire transmitter_n_1;
  wire transmitter_n_3;
  wire transmitter_n_4;
  wire transmitter_n_5;
  wire transmitter_n_7;

  FDRE #(
    .INIT(1'b0)) 
    \A[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(target_counter[0]),
        .Q(\A_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(target_counter[10]),
        .Q(\A_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(target_counter[12]),
        .Q(\A_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(target_counter[14]),
        .Q(\A_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\A[1]_i_1_n_0 ),
        .Q(\A_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \A[1]_i_1 
       (.I0(baud_select_IBUF[1]),
        .I1(baud_select_IBUF[2]),
        .I2(baud_select_IBUF[0]),
        .O(\A[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(target_counter[2]),
        .Q(\A_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(target_counter[3]),
        .Q(\A_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(target_counter[4]),
        .Q(\A_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(target_counter[5]),
        .Q(\A_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\A[6]_i_1_n_0 ),
        .Q(\A_n_0_[6] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \A[6]_i_1 
       (.I0(baud_select_IBUF[1]),
        .I1(baud_select_IBUF[2]),
        .I2(baud_select_IBUF[0]),
        .O(\A[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\A[7]_i_1_n_0 ),
        .Q(\A_n_0_[7] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h60)) 
    \A[7]_i_1 
       (.I0(baud_select_IBUF[2]),
        .I1(baud_select_IBUF[1]),
        .I2(baud_select_IBUF[0]),
        .O(\A[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \A[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(target_counter[8]),
        .Q(\A_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \A[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(target_counter[9]),
        .Q(\A_n_0_[9] ),
        .R(1'b0));
  OBUF \Rx_DATA_OBUF[0]_inst 
       (.I(Rx_DATA_OBUF[0]),
        .O(Rx_DATA[0]));
  OBUF \Rx_DATA_OBUF[1]_inst 
       (.I(Rx_DATA_OBUF[1]),
        .O(Rx_DATA[1]));
  OBUF \Rx_DATA_OBUF[2]_inst 
       (.I(Rx_DATA_OBUF[2]),
        .O(Rx_DATA[2]));
  OBUF \Rx_DATA_OBUF[3]_inst 
       (.I(Rx_DATA_OBUF[3]),
        .O(Rx_DATA[3]));
  OBUF \Rx_DATA_OBUF[4]_inst 
       (.I(Rx_DATA_OBUF[4]),
        .O(Rx_DATA[4]));
  OBUF \Rx_DATA_OBUF[5]_inst 
       (.I(Rx_DATA_OBUF[5]),
        .O(Rx_DATA[5]));
  OBUF \Rx_DATA_OBUF[6]_inst 
       (.I(Rx_DATA_OBUF[6]),
        .O(Rx_DATA[6]));
  OBUF \Rx_DATA_OBUF[7]_inst 
       (.I(Rx_DATA_OBUF[7]),
        .O(Rx_DATA[7]));
  IBUF Rx_EN_IBUF_inst
       (.I(Rx_EN),
        .O(Rx_EN_IBUF));
  OBUF Rx_FERROR_OBUF_inst
       (.I(Rx_FERROR_OBUF),
        .O(Rx_FERROR));
  OBUF Rx_PERROR_OBUF_inst
       (.I(Rx_PERROR_OBUF),
        .O(Rx_PERROR));
  OBUF Rx_VALID_OBUF_inst
       (.I(Rx_VALID_OBUF),
        .O(Rx_VALID));
  OBUF Tx_BUSY_OBUF_inst
       (.I(Tx_BUSY_OBUF),
        .O(Tx_BUSY));
  IBUF \Tx_DATA_IBUF[0]_inst 
       (.I(Tx_DATA[0]),
        .O(Tx_DATA_IBUF[0]));
  IBUF \Tx_DATA_IBUF[1]_inst 
       (.I(Tx_DATA[1]),
        .O(Tx_DATA_IBUF[1]));
  IBUF \Tx_DATA_IBUF[2]_inst 
       (.I(Tx_DATA[2]),
        .O(Tx_DATA_IBUF[2]));
  IBUF \Tx_DATA_IBUF[3]_inst 
       (.I(Tx_DATA[3]),
        .O(Tx_DATA_IBUF[3]));
  IBUF \Tx_DATA_IBUF[4]_inst 
       (.I(Tx_DATA[4]),
        .O(Tx_DATA_IBUF[4]));
  IBUF \Tx_DATA_IBUF[5]_inst 
       (.I(Tx_DATA[5]),
        .O(Tx_DATA_IBUF[5]));
  IBUF \Tx_DATA_IBUF[6]_inst 
       (.I(Tx_DATA[6]),
        .O(Tx_DATA_IBUF[6]));
  IBUF \Tx_DATA_IBUF[7]_inst 
       (.I(Tx_DATA[7]),
        .O(Tx_DATA_IBUF[7]));
  IBUF Tx_EN_IBUF_inst
       (.I(Tx_EN),
        .O(Tx_EN_IBUF));
  IBUF Tx_WR_IBUF_inst
       (.I(Tx_WR),
        .O(Tx_WR_IBUF));
  IBUF \baud_select_IBUF[0]_inst 
       (.I(baud_select[0]),
        .O(baud_select_IBUF[0]));
  IBUF \baud_select_IBUF[1]_inst 
       (.I(baud_select[1]),
        .O(baud_select_IBUF[1]));
  IBUF \baud_select_IBUF[2]_inst 
       (.I(baud_select[2]),
        .O(baud_select_IBUF[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  uart_receiver receiver
       (.\FSM_sequential_current_state_reg[1] (transmitter_n_0),
        .\FSM_sequential_current_state_reg[3] (transmitter_n_1),
        .\FSM_sequential_current_state_reg[3]_0 (transmitter_n_4),
        .Q(\transmit/current_state__0 ),
        .Rx_DATA_OBUF(Rx_DATA_OBUF),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .Rx_FERROR_OBUF(Rx_FERROR_OBUF),
        .Rx_PERROR_OBUF(Rx_PERROR_OBUF),
        .Rx_VALID_OBUF(Rx_VALID_OBUF),
        .\Tx_DATA[1] (receiver_n_7),
        .\Tx_DATA[4] (receiver_n_5),
        .\Tx_DATA[6] (receiver_n_6),
        .Tx_DATA_IBUF(Tx_DATA_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_IBUF(reset_IBUF),
        .sample_ENABLE_reg({\A_n_0_[14] ,\A_n_0_[12] ,\A_n_0_[10] ,\A_n_0_[9] ,\A_n_0_[8] ,\A_n_0_[7] ,\A_n_0_[6] ,\A_n_0_[5] ,\A_n_0_[4] ,\A_n_0_[3] ,\A_n_0_[2] ,\A_n_0_[1] ,\A_n_0_[0] }),
        .\second_counter_reg[1] (transmitter_n_7),
        .starter_reg(receiver_n_0),
        .starter_reg_0(transmitter_n_3),
        .starter_reg_1(transmitter_n_5),
        .\temp_reg[5] (receiver_n_4));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  uart_transmitter transmitter
       (.D({target_counter[14],target_counter[12],target_counter[10:8],target_counter[5:2],target_counter[0]}),
        .\FSM_sequential_current_state_reg[0] (transmitter_n_4),
        .\FSM_sequential_current_state_reg[1] (transmitter_n_3),
        .\FSM_sequential_current_state_reg[1]_0 (receiver_n_4),
        .\FSM_sequential_current_state_reg[2] (transmitter_n_1),
        .\FSM_sequential_current_state_reg[2]_0 (transmitter_n_5),
        .\FSM_sequential_current_state_reg[3] (transmitter_n_0),
        .Q(\transmit/current_state__0 ),
        .Tx_BUSY_OBUF(Tx_BUSY_OBUF),
        .Tx_DATA_IBUF(Tx_DATA_IBUF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[18] ({\A_n_0_[14] ,\A_n_0_[12] ,\A_n_0_[10] ,\A_n_0_[9] ,\A_n_0_[8] ,\A_n_0_[7] ,\A_n_0_[6] ,\A_n_0_[5] ,\A_n_0_[4] ,\A_n_0_[3] ,\A_n_0_[2] ,\A_n_0_[1] ,\A_n_0_[0] }),
        .reset_IBUF(reset_IBUF),
        .\second_counter[2]_i_5 (receiver_n_7),
        .\second_counter[2]_i_5_0 (receiver_n_6),
        .\second_counter_reg[1] (receiver_n_0),
        .starter_reg(transmitter_n_7),
        .starter_reg_0(receiver_n_5));
endmodule

module baud_controller
   (E,
    D,
    clk_IBUF_BUFG,
    \counter_reg[18]_0 ,
    reset_IBUF,
    baud_select_IBUF);
  output [0:0]E;
  output [9:0]D;
  input clk_IBUF_BUFG;
  input [12:0]\counter_reg[18]_0 ;
  input reset_IBUF;
  input [2:0]baud_select_IBUF;

  wire [9:0]D;
  wire [0:0]E;
  wire [2:0]baud_select_IBUF;
  wire clear;
  wire clk_IBUF_BUFG;
  wire [18:1]counter0;
  wire \counter[0]_i_10_n_0 ;
  wire \counter[0]_i_11_n_0 ;
  wire \counter[0]_i_12_n_0 ;
  wire \counter[0]_i_13_n_0 ;
  wire \counter[0]_i_2_n_0 ;
  wire \counter[0]_i_3_n_0 ;
  wire \counter[0]_i_4_n_0 ;
  wire \counter[0]_i_5_n_0 ;
  wire \counter[0]_i_6_n_0 ;
  wire \counter[0]_i_7_n_0 ;
  wire \counter[0]_i_9_n_0 ;
  wire \counter[12]_i_2_n_0 ;
  wire \counter[12]_i_3_n_0 ;
  wire \counter[12]_i_4_n_0 ;
  wire \counter[12]_i_5_n_0 ;
  wire \counter[16]_i_2_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[4]_i_2_n_0 ;
  wire \counter[4]_i_3_n_0 ;
  wire \counter[4]_i_4_n_0 ;
  wire \counter[4]_i_5_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire \counter[8]_i_5_n_0 ;
  wire [18:0]counter_reg;
  wire \counter_reg[0]_i_1_n_0 ;
  wire \counter_reg[0]_i_1_n_1 ;
  wire \counter_reg[0]_i_1_n_2 ;
  wire \counter_reg[0]_i_1_n_3 ;
  wire \counter_reg[0]_i_1_n_4 ;
  wire \counter_reg[0]_i_1_n_5 ;
  wire \counter_reg[0]_i_1_n_6 ;
  wire \counter_reg[0]_i_1_n_7 ;
  wire \counter_reg[0]_i_8_n_0 ;
  wire \counter_reg[0]_i_8_n_1 ;
  wire \counter_reg[0]_i_8_n_2 ;
  wire \counter_reg[0]_i_8_n_3 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[12]_i_1_n_4 ;
  wire \counter_reg[12]_i_1_n_5 ;
  wire \counter_reg[12]_i_1_n_6 ;
  wire \counter_reg[12]_i_1_n_7 ;
  wire \counter_reg[12]_i_6_n_0 ;
  wire \counter_reg[12]_i_6_n_1 ;
  wire \counter_reg[12]_i_6_n_2 ;
  wire \counter_reg[12]_i_6_n_3 ;
  wire \counter_reg[16]_i_1_n_2 ;
  wire \counter_reg[16]_i_1_n_3 ;
  wire \counter_reg[16]_i_1_n_5 ;
  wire \counter_reg[16]_i_1_n_6 ;
  wire \counter_reg[16]_i_1_n_7 ;
  wire \counter_reg[16]_i_5_n_3 ;
  wire [12:0]\counter_reg[18]_0 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[4]_i_1_n_4 ;
  wire \counter_reg[4]_i_1_n_5 ;
  wire \counter_reg[4]_i_1_n_6 ;
  wire \counter_reg[4]_i_1_n_7 ;
  wire \counter_reg[4]_i_6_n_0 ;
  wire \counter_reg[4]_i_6_n_1 ;
  wire \counter_reg[4]_i_6_n_2 ;
  wire \counter_reg[4]_i_6_n_3 ;
  wire \counter_reg[8]_i_1_n_0 ;
  wire \counter_reg[8]_i_1_n_1 ;
  wire \counter_reg[8]_i_1_n_2 ;
  wire \counter_reg[8]_i_1_n_3 ;
  wire \counter_reg[8]_i_1_n_4 ;
  wire \counter_reg[8]_i_1_n_5 ;
  wire \counter_reg[8]_i_1_n_6 ;
  wire \counter_reg[8]_i_1_n_7 ;
  wire \counter_reg[8]_i_6_n_0 ;
  wire \counter_reg[8]_i_6_n_1 ;
  wire \counter_reg[8]_i_6_n_2 ;
  wire \counter_reg[8]_i_6_n_3 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire reset_IBUF;
  wire \sample_ENABLE0_inferred__0/i__carry__0_n_0 ;
  wire \sample_ENABLE0_inferred__0/i__carry__0_n_1 ;
  wire \sample_ENABLE0_inferred__0/i__carry__0_n_2 ;
  wire \sample_ENABLE0_inferred__0/i__carry__0_n_3 ;
  wire \sample_ENABLE0_inferred__0/i__carry__1_n_3 ;
  wire \sample_ENABLE0_inferred__0/i__carry_n_0 ;
  wire \sample_ENABLE0_inferred__0/i__carry_n_1 ;
  wire \sample_ENABLE0_inferred__0/i__carry_n_2 ;
  wire \sample_ENABLE0_inferred__0/i__carry_n_3 ;
  wire sample_ENABLE_i_1__0_n_0;
  wire [3:2]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[16]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[16]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_sample_ENABLE0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_sample_ENABLE0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:2]\NLW_sample_ENABLE0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_sample_ENABLE0_inferred__0/i__carry__1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h43)) 
    \A[0]_i_1 
       (.I0(baud_select_IBUF[2]),
        .I1(baud_select_IBUF[0]),
        .I2(baud_select_IBUF[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \A[10]_i_1 
       (.I0(baud_select_IBUF[1]),
        .I1(baud_select_IBUF[0]),
        .I2(baud_select_IBUF[2]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \A[12]_i_1 
       (.I0(baud_select_IBUF[2]),
        .I1(baud_select_IBUF[1]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \A[14]_i_1 
       (.I0(baud_select_IBUF[2]),
        .I1(baud_select_IBUF[0]),
        .I2(baud_select_IBUF[1]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    \A[2]_i_1 
       (.I0(baud_select_IBUF[2]),
        .I1(baud_select_IBUF[1]),
        .I2(baud_select_IBUF[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \A[3]_i_1 
       (.I0(baud_select_IBUF[0]),
        .I1(baud_select_IBUF[1]),
        .I2(baud_select_IBUF[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h86)) 
    \A[4]_i_1 
       (.I0(baud_select_IBUF[0]),
        .I1(baud_select_IBUF[1]),
        .I2(baud_select_IBUF[2]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \A[5]_i_1 
       (.I0(baud_select_IBUF[0]),
        .I1(baud_select_IBUF[1]),
        .I2(baud_select_IBUF[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \A[8]_i_1 
       (.I0(baud_select_IBUF[1]),
        .I1(baud_select_IBUF[2]),
        .I2(baud_select_IBUF[0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \A[9]_i_1 
       (.I0(baud_select_IBUF[1]),
        .I1(baud_select_IBUF[0]),
        .I2(baud_select_IBUF[2]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[0]_i_10 
       (.I0(counter_reg[7]),
        .I1(counter_reg[5]),
        .I2(counter_reg[13]),
        .I3(counter_reg[9]),
        .I4(\counter[0]_i_13_n_0 ),
        .O(\counter[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_11 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(\counter[0]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_12 
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .O(\counter[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_13 
       (.I0(counter_reg[8]),
        .I1(counter_reg[15]),
        .I2(counter_reg[17]),
        .I3(counter_reg[11]),
        .O(\counter[0]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2 
       (.I0(\counter[0]_i_7_n_0 ),
        .I1(counter_reg[0]),
        .O(\counter[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[0]_i_3 
       (.I0(counter_reg[3]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[3]),
        .O(\counter[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[0]_i_4 
       (.I0(counter_reg[2]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[2]),
        .O(\counter[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[0]_i_5 
       (.I0(counter_reg[1]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[1]),
        .O(\counter[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_6 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \counter[0]_i_7 
       (.I0(\counter[0]_i_9_n_0 ),
        .I1(\counter[0]_i_10_n_0 ),
        .I2(counter_reg[12]),
        .I3(counter_reg[16]),
        .I4(counter_reg[6]),
        .O(\counter[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \counter[0]_i_9 
       (.I0(\counter[0]_i_11_n_0 ),
        .I1(\counter[0]_i_12_n_0 ),
        .I2(counter_reg[14]),
        .I3(counter_reg[18]),
        .I4(counter_reg[10]),
        .I5(counter_reg[4]),
        .O(\counter[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[12]_i_2 
       (.I0(counter_reg[15]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[15]),
        .O(\counter[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[12]_i_3 
       (.I0(counter_reg[14]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[14]),
        .O(\counter[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[12]_i_4 
       (.I0(counter_reg[13]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[13]),
        .O(\counter[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[12]_i_5 
       (.I0(counter_reg[12]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[12]),
        .O(\counter[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[16]_i_2 
       (.I0(counter_reg[18]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[18]),
        .O(\counter[16]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[16]_i_3 
       (.I0(counter_reg[17]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[17]),
        .O(\counter[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[16]_i_4 
       (.I0(counter_reg[16]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[16]),
        .O(\counter[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[4]_i_2 
       (.I0(counter_reg[7]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[7]),
        .O(\counter[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[4]_i_3 
       (.I0(counter_reg[6]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[6]),
        .O(\counter[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[4]_i_4 
       (.I0(counter_reg[5]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[5]),
        .O(\counter[4]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[4]_i_5 
       (.I0(counter_reg[4]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[4]),
        .O(\counter[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[8]_i_2 
       (.I0(counter_reg[11]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[11]),
        .O(\counter[8]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[8]_i_3 
       (.I0(counter_reg[10]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[10]),
        .O(\counter[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[8]_i_4 
       (.I0(counter_reg[9]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[9]),
        .O(\counter[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[8]_i_5 
       (.I0(counter_reg[8]),
        .I1(\counter[0]_i_7_n_0 ),
        .I2(counter0[8]),
        .O(\counter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_7 ),
        .Q(counter_reg[0]),
        .R(clear));
  CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1_n_0 ,\counter_reg[0]_i_1_n_1 ,\counter_reg[0]_i_1_n_2 ,\counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2_n_0 }),
        .O({\counter_reg[0]_i_1_n_4 ,\counter_reg[0]_i_1_n_5 ,\counter_reg[0]_i_1_n_6 ,\counter_reg[0]_i_1_n_7 }),
        .S({\counter[0]_i_3_n_0 ,\counter[0]_i_4_n_0 ,\counter[0]_i_5_n_0 ,\counter[0]_i_6_n_0 }));
  CARRY4 \counter_reg[0]_i_8 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_8_n_0 ,\counter_reg[0]_i_8_n_1 ,\counter_reg[0]_i_8_n_2 ,\counter_reg[0]_i_8_n_3 }),
        .CYINIT(counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[4:1]),
        .S(counter_reg[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_5 ),
        .Q(counter_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_4 ),
        .Q(counter_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_7 ),
        .Q(counter_reg[12]),
        .R(clear));
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[8]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1_n_4 ,\counter_reg[12]_i_1_n_5 ,\counter_reg[12]_i_1_n_6 ,\counter_reg[12]_i_1_n_7 }),
        .S({\counter[12]_i_2_n_0 ,\counter[12]_i_3_n_0 ,\counter[12]_i_4_n_0 ,\counter[12]_i_5_n_0 }));
  CARRY4 \counter_reg[12]_i_6 
       (.CI(\counter_reg[8]_i_6_n_0 ),
        .CO({\counter_reg[12]_i_6_n_0 ,\counter_reg[12]_i_6_n_1 ,\counter_reg[12]_i_6_n_2 ,\counter_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[16:13]),
        .S(counter_reg[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_6 ),
        .Q(counter_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_5 ),
        .Q(counter_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1_n_4 ),
        .Q(counter_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_7 ),
        .Q(counter_reg[16]),
        .R(clear));
  CARRY4 \counter_reg[16]_i_1 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\counter_reg[16]_i_1_n_2 ,\counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1_O_UNCONNECTED [3],\counter_reg[16]_i_1_n_5 ,\counter_reg[16]_i_1_n_6 ,\counter_reg[16]_i_1_n_7 }),
        .S({1'b0,\counter[16]_i_2_n_0 ,\counter[16]_i_3_n_0 ,\counter[16]_i_4_n_0 }));
  CARRY4 \counter_reg[16]_i_5 
       (.CI(\counter_reg[12]_i_6_n_0 ),
        .CO({\NLW_counter_reg[16]_i_5_CO_UNCONNECTED [3:1],\counter_reg[16]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_5_O_UNCONNECTED [3:2],counter0[18:17]}),
        .S({1'b0,1'b0,counter_reg[18:17]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_6 ),
        .Q(counter_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1_n_5 ),
        .Q(counter_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_6 ),
        .Q(counter_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_5 ),
        .Q(counter_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1_n_4 ),
        .Q(counter_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_7 ),
        .Q(counter_reg[4]),
        .R(clear));
  CARRY4 \counter_reg[4]_i_1 
       (.CI(\counter_reg[0]_i_1_n_0 ),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1_n_4 ,\counter_reg[4]_i_1_n_5 ,\counter_reg[4]_i_1_n_6 ,\counter_reg[4]_i_1_n_7 }),
        .S({\counter[4]_i_2_n_0 ,\counter[4]_i_3_n_0 ,\counter[4]_i_4_n_0 ,\counter[4]_i_5_n_0 }));
  CARRY4 \counter_reg[4]_i_6 
       (.CI(\counter_reg[0]_i_8_n_0 ),
        .CO({\counter_reg[4]_i_6_n_0 ,\counter_reg[4]_i_6_n_1 ,\counter_reg[4]_i_6_n_2 ,\counter_reg[4]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[8:5]),
        .S(counter_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_6 ),
        .Q(counter_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_5 ),
        .Q(counter_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1_n_4 ),
        .Q(counter_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_7 ),
        .Q(counter_reg[8]),
        .R(clear));
  CARRY4 \counter_reg[8]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[8]_i_1_n_0 ,\counter_reg[8]_i_1_n_1 ,\counter_reg[8]_i_1_n_2 ,\counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1_n_4 ,\counter_reg[8]_i_1_n_5 ,\counter_reg[8]_i_1_n_6 ,\counter_reg[8]_i_1_n_7 }),
        .S({\counter[8]_i_2_n_0 ,\counter[8]_i_3_n_0 ,\counter[8]_i_4_n_0 ,\counter[8]_i_5_n_0 }));
  CARRY4 \counter_reg[8]_i_6 
       (.CI(\counter_reg[4]_i_6_n_0 ),
        .CO({\counter_reg[8]_i_6_n_0 ,\counter_reg[8]_i_6_n_1 ,\counter_reg[8]_i_6_n_2 ,\counter_reg[8]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[12:9]),
        .S(counter_reg[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1_n_6 ),
        .Q(counter_reg[9]),
        .R(clear));
  LUT3 #(
    .INIT(8'hBA)) 
    i__carry__0_i_1
       (.I0(counter_reg[15]),
        .I1(\counter_reg[18]_0 [10]),
        .I2(counter_reg[14]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(counter_reg[13]),
        .I1(\counter_reg[18]_0 [9]),
        .I2(counter_reg[12]),
        .I3(\counter_reg[18]_0 [8]),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(counter_reg[11]),
        .I1(\counter_reg[18]_0 [7]),
        .I2(counter_reg[10]),
        .I3(\counter_reg[18]_0 [6]),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4
       (.I0(counter_reg[9]),
        .I1(\counter_reg[18]_0 [5]),
        .I2(counter_reg[8]),
        .I3(\counter_reg[18]_0 [4]),
        .O(i__carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry__0_i_5
       (.I0(counter_reg[15]),
        .I1(\counter_reg[18]_0 [10]),
        .I2(counter_reg[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(\counter_reg[18]_0 [9]),
        .I1(counter_reg[13]),
        .I2(\counter_reg[18]_0 [8]),
        .I3(counter_reg[12]),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(\counter_reg[18]_0 [7]),
        .I1(counter_reg[11]),
        .I2(\counter_reg[18]_0 [6]),
        .I3(counter_reg[10]),
        .O(i__carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(\counter_reg[18]_0 [5]),
        .I1(counter_reg[9]),
        .I2(\counter_reg[18]_0 [4]),
        .I3(counter_reg[8]),
        .O(i__carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__1_i_1
       (.I0(counter_reg[18]),
        .I1(\counter_reg[18]_0 [12]),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    i__carry__1_i_2
       (.I0(counter_reg[17]),
        .I1(\counter_reg[18]_0 [11]),
        .I2(counter_reg[16]),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__1_i_3
       (.I0(\counter_reg[18]_0 [12]),
        .I1(counter_reg[18]),
        .O(i__carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    i__carry__1_i_4
       (.I0(counter_reg[17]),
        .I1(\counter_reg[18]_0 [11]),
        .I2(counter_reg[16]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(counter_reg[7]),
        .I1(\counter_reg[18]_0 [3]),
        .I2(counter_reg[6]),
        .I3(\counter_reg[18]_0 [2]),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(counter_reg[5]),
        .I1(\counter_reg[18]_0 [1]),
        .I2(counter_reg[4]),
        .I3(\counter_reg[18]_0 [0]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(\counter_reg[18]_0 [3]),
        .I1(counter_reg[7]),
        .I2(\counter_reg[18]_0 [2]),
        .I3(counter_reg[6]),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(\counter_reg[18]_0 [1]),
        .I1(counter_reg[5]),
        .I2(\counter_reg[18]_0 [0]),
        .I3(counter_reg[4]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_7
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_8
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(i__carry_i_8_n_0));
  CARRY4 \sample_ENABLE0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\sample_ENABLE0_inferred__0/i__carry_n_0 ,\sample_ENABLE0_inferred__0/i__carry_n_1 ,\sample_ENABLE0_inferred__0/i__carry_n_2 ,\sample_ENABLE0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_sample_ENABLE0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  CARRY4 \sample_ENABLE0_inferred__0/i__carry__0 
       (.CI(\sample_ENABLE0_inferred__0/i__carry_n_0 ),
        .CO({\sample_ENABLE0_inferred__0/i__carry__0_n_0 ,\sample_ENABLE0_inferred__0/i__carry__0_n_1 ,\sample_ENABLE0_inferred__0/i__carry__0_n_2 ,\sample_ENABLE0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_sample_ENABLE0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  CARRY4 \sample_ENABLE0_inferred__0/i__carry__1 
       (.CI(\sample_ENABLE0_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_sample_ENABLE0_inferred__0/i__carry__1_CO_UNCONNECTED [3:2],clear,\sample_ENABLE0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0}),
        .O(\NLW_sample_ENABLE0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    sample_ENABLE_i_1__0
       (.I0(reset_IBUF),
        .I1(E),
        .O(sample_ENABLE_i_1__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sample_ENABLE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sample_ENABLE_i_1__0_n_0),
        .Q(E),
        .S(clear));
endmodule

(* ORIG_REF_NAME = "baud_controller" *) 
module baud_controller_0
   (clk_out,
    sample_ENABLE_reg_0,
    sample_ENABLE_reg_1,
    SR,
    clk_IBUF_BUFG,
    reset_IBUF,
    sample_ENABLE_reg_2,
    Rx_EN_IBUF,
    \counter_reg[0]_0 );
  output clk_out;
  output sample_ENABLE_reg_0;
  output sample_ENABLE_reg_1;
  output [0:0]SR;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input [12:0]sample_ENABLE_reg_2;
  input Rx_EN_IBUF;
  input \counter_reg[0]_0 ;

  wire Rx_EN_IBUF;
  wire [0:0]SR;
  wire clk_IBUF_BUFG;
  wire clk_out;
  wire \counter[0]_i_10__0_n_0 ;
  wire \counter[0]_i_11__0_n_0 ;
  wire \counter[0]_i_12__0_n_0 ;
  wire \counter[0]_i_13__0_n_0 ;
  wire \counter[0]_i_2__0_n_0 ;
  wire \counter[0]_i_3__0_n_0 ;
  wire \counter[0]_i_4__0_n_0 ;
  wire \counter[0]_i_5__0_n_0 ;
  wire \counter[0]_i_6__0_n_0 ;
  wire \counter[0]_i_7__0_n_0 ;
  wire \counter[0]_i_9__0_n_0 ;
  wire \counter[12]_i_2__0_n_0 ;
  wire \counter[12]_i_3__0_n_0 ;
  wire \counter[12]_i_4__0_n_0 ;
  wire \counter[12]_i_5__0_n_0 ;
  wire \counter[16]_i_2__0_n_0 ;
  wire \counter[16]_i_3__0_n_0 ;
  wire \counter[16]_i_4__0_n_0 ;
  wire \counter[4]_i_2__0_n_0 ;
  wire \counter[4]_i_3__0_n_0 ;
  wire \counter[4]_i_4__0_n_0 ;
  wire \counter[4]_i_5__0_n_0 ;
  wire \counter[8]_i_2__0_n_0 ;
  wire \counter[8]_i_3__0_n_0 ;
  wire \counter[8]_i_4__0_n_0 ;
  wire \counter[8]_i_5__0_n_0 ;
  wire [18:0]counter_reg;
  wire \counter_reg[0]_0 ;
  wire \counter_reg[0]_i_1__0_n_0 ;
  wire \counter_reg[0]_i_1__0_n_1 ;
  wire \counter_reg[0]_i_1__0_n_2 ;
  wire \counter_reg[0]_i_1__0_n_3 ;
  wire \counter_reg[0]_i_1__0_n_4 ;
  wire \counter_reg[0]_i_1__0_n_5 ;
  wire \counter_reg[0]_i_1__0_n_6 ;
  wire \counter_reg[0]_i_1__0_n_7 ;
  wire \counter_reg[0]_i_8__0_n_0 ;
  wire \counter_reg[0]_i_8__0_n_1 ;
  wire \counter_reg[0]_i_8__0_n_2 ;
  wire \counter_reg[0]_i_8__0_n_3 ;
  wire \counter_reg[0]_i_8__0_n_4 ;
  wire \counter_reg[0]_i_8__0_n_5 ;
  wire \counter_reg[0]_i_8__0_n_6 ;
  wire \counter_reg[0]_i_8__0_n_7 ;
  wire \counter_reg[12]_i_1__0_n_0 ;
  wire \counter_reg[12]_i_1__0_n_1 ;
  wire \counter_reg[12]_i_1__0_n_2 ;
  wire \counter_reg[12]_i_1__0_n_3 ;
  wire \counter_reg[12]_i_1__0_n_4 ;
  wire \counter_reg[12]_i_1__0_n_5 ;
  wire \counter_reg[12]_i_1__0_n_6 ;
  wire \counter_reg[12]_i_1__0_n_7 ;
  wire \counter_reg[12]_i_6__0_n_0 ;
  wire \counter_reg[12]_i_6__0_n_1 ;
  wire \counter_reg[12]_i_6__0_n_2 ;
  wire \counter_reg[12]_i_6__0_n_3 ;
  wire \counter_reg[12]_i_6__0_n_4 ;
  wire \counter_reg[12]_i_6__0_n_5 ;
  wire \counter_reg[12]_i_6__0_n_6 ;
  wire \counter_reg[12]_i_6__0_n_7 ;
  wire \counter_reg[16]_i_1__0_n_2 ;
  wire \counter_reg[16]_i_1__0_n_3 ;
  wire \counter_reg[16]_i_1__0_n_5 ;
  wire \counter_reg[16]_i_1__0_n_6 ;
  wire \counter_reg[16]_i_1__0_n_7 ;
  wire \counter_reg[16]_i_5__0_n_3 ;
  wire \counter_reg[16]_i_5__0_n_6 ;
  wire \counter_reg[16]_i_5__0_n_7 ;
  wire \counter_reg[4]_i_1__0_n_0 ;
  wire \counter_reg[4]_i_1__0_n_1 ;
  wire \counter_reg[4]_i_1__0_n_2 ;
  wire \counter_reg[4]_i_1__0_n_3 ;
  wire \counter_reg[4]_i_1__0_n_4 ;
  wire \counter_reg[4]_i_1__0_n_5 ;
  wire \counter_reg[4]_i_1__0_n_6 ;
  wire \counter_reg[4]_i_1__0_n_7 ;
  wire \counter_reg[4]_i_6__0_n_0 ;
  wire \counter_reg[4]_i_6__0_n_1 ;
  wire \counter_reg[4]_i_6__0_n_2 ;
  wire \counter_reg[4]_i_6__0_n_3 ;
  wire \counter_reg[4]_i_6__0_n_4 ;
  wire \counter_reg[4]_i_6__0_n_5 ;
  wire \counter_reg[4]_i_6__0_n_6 ;
  wire \counter_reg[4]_i_6__0_n_7 ;
  wire \counter_reg[8]_i_1__0_n_0 ;
  wire \counter_reg[8]_i_1__0_n_1 ;
  wire \counter_reg[8]_i_1__0_n_2 ;
  wire \counter_reg[8]_i_1__0_n_3 ;
  wire \counter_reg[8]_i_1__0_n_4 ;
  wire \counter_reg[8]_i_1__0_n_5 ;
  wire \counter_reg[8]_i_1__0_n_6 ;
  wire \counter_reg[8]_i_1__0_n_7 ;
  wire \counter_reg[8]_i_6__0_n_0 ;
  wire \counter_reg[8]_i_6__0_n_1 ;
  wire \counter_reg[8]_i_6__0_n_2 ;
  wire \counter_reg[8]_i_6__0_n_3 ;
  wire \counter_reg[8]_i_6__0_n_4 ;
  wire \counter_reg[8]_i_6__0_n_5 ;
  wire \counter_reg[8]_i_6__0_n_6 ;
  wire \counter_reg[8]_i_6__0_n_7 ;
  wire reset_IBUF;
  wire sample_ENABLE0_carry__0_i_1_n_0;
  wire sample_ENABLE0_carry__0_i_2_n_0;
  wire sample_ENABLE0_carry__0_i_3_n_0;
  wire sample_ENABLE0_carry__0_i_4_n_0;
  wire sample_ENABLE0_carry__0_i_5_n_0;
  wire sample_ENABLE0_carry__0_i_6_n_0;
  wire sample_ENABLE0_carry__0_i_7_n_0;
  wire sample_ENABLE0_carry__0_i_8_n_0;
  wire sample_ENABLE0_carry__0_n_0;
  wire sample_ENABLE0_carry__0_n_1;
  wire sample_ENABLE0_carry__0_n_2;
  wire sample_ENABLE0_carry__0_n_3;
  wire sample_ENABLE0_carry__1_i_1_n_0;
  wire sample_ENABLE0_carry__1_i_2_n_0;
  wire sample_ENABLE0_carry__1_i_3_n_0;
  wire sample_ENABLE0_carry__1_i_4_n_0;
  wire sample_ENABLE0_carry__1_n_2;
  wire sample_ENABLE0_carry__1_n_3;
  wire sample_ENABLE0_carry_i_1_n_0;
  wire sample_ENABLE0_carry_i_2_n_0;
  wire sample_ENABLE0_carry_i_3_n_0;
  wire sample_ENABLE0_carry_i_4_n_0;
  wire sample_ENABLE0_carry_i_5_n_0;
  wire sample_ENABLE0_carry_i_6_n_0;
  wire sample_ENABLE0_carry_i_7_n_0;
  wire sample_ENABLE0_carry_i_8_n_0;
  wire sample_ENABLE0_carry_n_0;
  wire sample_ENABLE0_carry_n_1;
  wire sample_ENABLE0_carry_n_2;
  wire sample_ENABLE0_carry_n_3;
  wire sample_ENABLE_i_1_n_0;
  wire sample_ENABLE_reg_0;
  wire sample_ENABLE_reg_1;
  wire [12:0]sample_ENABLE_reg_2;
  wire [3:2]\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:1]\NLW_counter_reg[16]_i_5__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[16]_i_5__0_O_UNCONNECTED ;
  wire [3:0]NLW_sample_ENABLE0_carry_O_UNCONNECTED;
  wire [3:0]NLW_sample_ENABLE0_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_sample_ENABLE0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_sample_ENABLE0_carry__1_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[0]_i_10__0 
       (.I0(counter_reg[16]),
        .I1(counter_reg[6]),
        .I2(counter_reg[11]),
        .I3(counter_reg[10]),
        .I4(\counter[0]_i_13__0_n_0 ),
        .O(\counter[0]_i_10__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_11__0 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(\counter[0]_i_11__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \counter[0]_i_12__0 
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .O(\counter[0]_i_12__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[0]_i_13__0 
       (.I0(counter_reg[4]),
        .I1(counter_reg[15]),
        .I2(counter_reg[13]),
        .I3(counter_reg[9]),
        .O(\counter[0]_i_13__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_2__0 
       (.I0(\counter[0]_i_7__0_n_0 ),
        .I1(counter_reg[0]),
        .O(\counter[0]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[0]_i_3__0 
       (.I0(counter_reg[3]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[0]_i_8__0_n_5 ),
        .O(\counter[0]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[0]_i_4__0 
       (.I0(counter_reg[2]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[0]_i_8__0_n_6 ),
        .O(\counter[0]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[0]_i_5__0 
       (.I0(counter_reg[1]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[0]_i_8__0_n_7 ),
        .O(\counter[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_6__0 
       (.I0(counter_reg[0]),
        .O(\counter[0]_i_6__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \counter[0]_i_7__0 
       (.I0(\counter[0]_i_9__0_n_0 ),
        .I1(\counter[0]_i_10__0_n_0 ),
        .I2(counter_reg[5]),
        .I3(counter_reg[7]),
        .I4(counter_reg[14]),
        .O(\counter[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \counter[0]_i_9__0 
       (.I0(\counter[0]_i_11__0_n_0 ),
        .I1(\counter[0]_i_12__0_n_0 ),
        .I2(counter_reg[17]),
        .I3(counter_reg[12]),
        .I4(counter_reg[8]),
        .I5(counter_reg[18]),
        .O(\counter[0]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[12]_i_2__0 
       (.I0(counter_reg[15]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[12]_i_6__0_n_5 ),
        .O(\counter[12]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[12]_i_3__0 
       (.I0(counter_reg[14]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[12]_i_6__0_n_6 ),
        .O(\counter[12]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[12]_i_4__0 
       (.I0(counter_reg[13]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[12]_i_6__0_n_7 ),
        .O(\counter[12]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[12]_i_5__0 
       (.I0(counter_reg[12]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[8]_i_6__0_n_4 ),
        .O(\counter[12]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[16]_i_2__0 
       (.I0(counter_reg[18]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[16]_i_5__0_n_6 ),
        .O(\counter[16]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[16]_i_3__0 
       (.I0(counter_reg[17]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[16]_i_5__0_n_7 ),
        .O(\counter[16]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[16]_i_4__0 
       (.I0(counter_reg[16]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[12]_i_6__0_n_4 ),
        .O(\counter[16]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \counter[3]_i_1__0 
       (.I0(clk_out),
        .I1(\counter_reg[0]_0 ),
        .I2(reset_IBUF),
        .O(SR));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[4]_i_2__0 
       (.I0(counter_reg[7]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[4]_i_6__0_n_5 ),
        .O(\counter[4]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[4]_i_3__0 
       (.I0(counter_reg[6]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[4]_i_6__0_n_6 ),
        .O(\counter[4]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[4]_i_4__0 
       (.I0(counter_reg[5]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[4]_i_6__0_n_7 ),
        .O(\counter[4]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[4]_i_5__0 
       (.I0(counter_reg[4]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[0]_i_8__0_n_4 ),
        .O(\counter[4]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[8]_i_2__0 
       (.I0(counter_reg[11]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[8]_i_6__0_n_5 ),
        .O(\counter[8]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[8]_i_3__0 
       (.I0(counter_reg[10]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[8]_i_6__0_n_6 ),
        .O(\counter[8]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[8]_i_4__0 
       (.I0(counter_reg[9]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[8]_i_6__0_n_7 ),
        .O(\counter[8]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \counter[8]_i_5__0 
       (.I0(counter_reg[8]),
        .I1(\counter[0]_i_7__0_n_0 ),
        .I2(\counter_reg[4]_i_6__0_n_4 ),
        .O(\counter[8]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_7 ),
        .Q(counter_reg[0]),
        .R(sample_ENABLE0_carry__1_n_2));
  CARRY4 \counter_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_1__0_n_0 ,\counter_reg[0]_i_1__0_n_1 ,\counter_reg[0]_i_1__0_n_2 ,\counter_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\counter[0]_i_2__0_n_0 }),
        .O({\counter_reg[0]_i_1__0_n_4 ,\counter_reg[0]_i_1__0_n_5 ,\counter_reg[0]_i_1__0_n_6 ,\counter_reg[0]_i_1__0_n_7 }),
        .S({\counter[0]_i_3__0_n_0 ,\counter[0]_i_4__0_n_0 ,\counter[0]_i_5__0_n_0 ,\counter[0]_i_6__0_n_0 }));
  CARRY4 \counter_reg[0]_i_8__0 
       (.CI(1'b0),
        .CO({\counter_reg[0]_i_8__0_n_0 ,\counter_reg[0]_i_8__0_n_1 ,\counter_reg[0]_i_8__0_n_2 ,\counter_reg[0]_i_8__0_n_3 }),
        .CYINIT(counter_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[0]_i_8__0_n_4 ,\counter_reg[0]_i_8__0_n_5 ,\counter_reg[0]_i_8__0_n_6 ,\counter_reg[0]_i_8__0_n_7 }),
        .S(counter_reg[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_5 ),
        .Q(counter_reg[10]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_4 ),
        .Q(counter_reg[11]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_7 ),
        .Q(counter_reg[12]),
        .R(sample_ENABLE0_carry__1_n_2));
  CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\counter_reg[8]_i_1__0_n_0 ),
        .CO({\counter_reg[12]_i_1__0_n_0 ,\counter_reg[12]_i_1__0_n_1 ,\counter_reg[12]_i_1__0_n_2 ,\counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_1__0_n_4 ,\counter_reg[12]_i_1__0_n_5 ,\counter_reg[12]_i_1__0_n_6 ,\counter_reg[12]_i_1__0_n_7 }),
        .S({\counter[12]_i_2__0_n_0 ,\counter[12]_i_3__0_n_0 ,\counter[12]_i_4__0_n_0 ,\counter[12]_i_5__0_n_0 }));
  CARRY4 \counter_reg[12]_i_6__0 
       (.CI(\counter_reg[8]_i_6__0_n_0 ),
        .CO({\counter_reg[12]_i_6__0_n_0 ,\counter_reg[12]_i_6__0_n_1 ,\counter_reg[12]_i_6__0_n_2 ,\counter_reg[12]_i_6__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[12]_i_6__0_n_4 ,\counter_reg[12]_i_6__0_n_5 ,\counter_reg[12]_i_6__0_n_6 ,\counter_reg[12]_i_6__0_n_7 }),
        .S(counter_reg[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_6 ),
        .Q(counter_reg[13]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_5 ),
        .Q(counter_reg[14]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[12]_i_1__0_n_4 ),
        .Q(counter_reg[15]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_7 ),
        .Q(counter_reg[16]),
        .R(sample_ENABLE0_carry__1_n_2));
  CARRY4 \counter_reg[16]_i_1__0 
       (.CI(\counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\counter_reg[16]_i_1__0_n_2 ,\counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\counter_reg[16]_i_1__0_n_5 ,\counter_reg[16]_i_1__0_n_6 ,\counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,\counter[16]_i_2__0_n_0 ,\counter[16]_i_3__0_n_0 ,\counter[16]_i_4__0_n_0 }));
  CARRY4 \counter_reg[16]_i_5__0 
       (.CI(\counter_reg[12]_i_6__0_n_0 ),
        .CO({\NLW_counter_reg[16]_i_5__0_CO_UNCONNECTED [3:1],\counter_reg[16]_i_5__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[16]_i_5__0_O_UNCONNECTED [3:2],\counter_reg[16]_i_5__0_n_6 ,\counter_reg[16]_i_5__0_n_7 }),
        .S({1'b0,1'b0,counter_reg[18:17]}));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_6 ),
        .Q(counter_reg[17]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[16]_i_1__0_n_5 ),
        .Q(counter_reg[18]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_6 ),
        .Q(counter_reg[1]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_5 ),
        .Q(counter_reg[2]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[0]_i_1__0_n_4 ),
        .Q(counter_reg[3]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_7 ),
        .Q(counter_reg[4]),
        .R(sample_ENABLE0_carry__1_n_2));
  CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\counter_reg[0]_i_1__0_n_0 ),
        .CO({\counter_reg[4]_i_1__0_n_0 ,\counter_reg[4]_i_1__0_n_1 ,\counter_reg[4]_i_1__0_n_2 ,\counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_1__0_n_4 ,\counter_reg[4]_i_1__0_n_5 ,\counter_reg[4]_i_1__0_n_6 ,\counter_reg[4]_i_1__0_n_7 }),
        .S({\counter[4]_i_2__0_n_0 ,\counter[4]_i_3__0_n_0 ,\counter[4]_i_4__0_n_0 ,\counter[4]_i_5__0_n_0 }));
  CARRY4 \counter_reg[4]_i_6__0 
       (.CI(\counter_reg[0]_i_8__0_n_0 ),
        .CO({\counter_reg[4]_i_6__0_n_0 ,\counter_reg[4]_i_6__0_n_1 ,\counter_reg[4]_i_6__0_n_2 ,\counter_reg[4]_i_6__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[4]_i_6__0_n_4 ,\counter_reg[4]_i_6__0_n_5 ,\counter_reg[4]_i_6__0_n_6 ,\counter_reg[4]_i_6__0_n_7 }),
        .S(counter_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_6 ),
        .Q(counter_reg[5]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_5 ),
        .Q(counter_reg[6]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[4]_i_1__0_n_4 ),
        .Q(counter_reg[7]),
        .R(sample_ENABLE0_carry__1_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_7 ),
        .Q(counter_reg[8]),
        .R(sample_ENABLE0_carry__1_n_2));
  CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\counter_reg[4]_i_1__0_n_0 ),
        .CO({\counter_reg[8]_i_1__0_n_0 ,\counter_reg[8]_i_1__0_n_1 ,\counter_reg[8]_i_1__0_n_2 ,\counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_1__0_n_4 ,\counter_reg[8]_i_1__0_n_5 ,\counter_reg[8]_i_1__0_n_6 ,\counter_reg[8]_i_1__0_n_7 }),
        .S({\counter[8]_i_2__0_n_0 ,\counter[8]_i_3__0_n_0 ,\counter[8]_i_4__0_n_0 ,\counter[8]_i_5__0_n_0 }));
  CARRY4 \counter_reg[8]_i_6__0 
       (.CI(\counter_reg[4]_i_6__0_n_0 ),
        .CO({\counter_reg[8]_i_6__0_n_0 ,\counter_reg[8]_i_6__0_n_1 ,\counter_reg[8]_i_6__0_n_2 ,\counter_reg[8]_i_6__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[8]_i_6__0_n_4 ,\counter_reg[8]_i_6__0_n_5 ,\counter_reg[8]_i_6__0_n_6 ,\counter_reg[8]_i_6__0_n_7 }),
        .S(counter_reg[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter_reg[8]_i_1__0_n_6 ),
        .Q(counter_reg[9]),
        .R(sample_ENABLE0_carry__1_n_2));
  CARRY4 sample_ENABLE0_carry
       (.CI(1'b0),
        .CO({sample_ENABLE0_carry_n_0,sample_ENABLE0_carry_n_1,sample_ENABLE0_carry_n_2,sample_ENABLE0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({sample_ENABLE0_carry_i_1_n_0,sample_ENABLE0_carry_i_2_n_0,sample_ENABLE0_carry_i_3_n_0,sample_ENABLE0_carry_i_4_n_0}),
        .O(NLW_sample_ENABLE0_carry_O_UNCONNECTED[3:0]),
        .S({sample_ENABLE0_carry_i_5_n_0,sample_ENABLE0_carry_i_6_n_0,sample_ENABLE0_carry_i_7_n_0,sample_ENABLE0_carry_i_8_n_0}));
  CARRY4 sample_ENABLE0_carry__0
       (.CI(sample_ENABLE0_carry_n_0),
        .CO({sample_ENABLE0_carry__0_n_0,sample_ENABLE0_carry__0_n_1,sample_ENABLE0_carry__0_n_2,sample_ENABLE0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({sample_ENABLE0_carry__0_i_1_n_0,sample_ENABLE0_carry__0_i_2_n_0,sample_ENABLE0_carry__0_i_3_n_0,sample_ENABLE0_carry__0_i_4_n_0}),
        .O(NLW_sample_ENABLE0_carry__0_O_UNCONNECTED[3:0]),
        .S({sample_ENABLE0_carry__0_i_5_n_0,sample_ENABLE0_carry__0_i_6_n_0,sample_ENABLE0_carry__0_i_7_n_0,sample_ENABLE0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hBA)) 
    sample_ENABLE0_carry__0_i_1
       (.I0(counter_reg[15]),
        .I1(sample_ENABLE_reg_2[10]),
        .I2(counter_reg[14]),
        .O(sample_ENABLE0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    sample_ENABLE0_carry__0_i_2
       (.I0(sample_ENABLE_reg_2[9]),
        .I1(counter_reg[13]),
        .I2(counter_reg[12]),
        .I3(sample_ENABLE_reg_2[8]),
        .O(sample_ENABLE0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    sample_ENABLE0_carry__0_i_3
       (.I0(sample_ENABLE_reg_2[7]),
        .I1(counter_reg[11]),
        .I2(counter_reg[10]),
        .I3(sample_ENABLE_reg_2[6]),
        .O(sample_ENABLE0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    sample_ENABLE0_carry__0_i_4
       (.I0(sample_ENABLE_reg_2[5]),
        .I1(counter_reg[9]),
        .I2(counter_reg[8]),
        .I3(sample_ENABLE_reg_2[4]),
        .O(sample_ENABLE0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    sample_ENABLE0_carry__0_i_5
       (.I0(counter_reg[15]),
        .I1(counter_reg[14]),
        .I2(sample_ENABLE_reg_2[10]),
        .O(sample_ENABLE0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_ENABLE0_carry__0_i_6
       (.I0(counter_reg[13]),
        .I1(sample_ENABLE_reg_2[9]),
        .I2(counter_reg[12]),
        .I3(sample_ENABLE_reg_2[8]),
        .O(sample_ENABLE0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_ENABLE0_carry__0_i_7
       (.I0(counter_reg[11]),
        .I1(sample_ENABLE_reg_2[7]),
        .I2(counter_reg[10]),
        .I3(sample_ENABLE_reg_2[6]),
        .O(sample_ENABLE0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_ENABLE0_carry__0_i_8
       (.I0(counter_reg[9]),
        .I1(sample_ENABLE_reg_2[5]),
        .I2(counter_reg[8]),
        .I3(sample_ENABLE_reg_2[4]),
        .O(sample_ENABLE0_carry__0_i_8_n_0));
  CARRY4 sample_ENABLE0_carry__1
       (.CI(sample_ENABLE0_carry__0_n_0),
        .CO({NLW_sample_ENABLE0_carry__1_CO_UNCONNECTED[3:2],sample_ENABLE0_carry__1_n_2,sample_ENABLE0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,sample_ENABLE0_carry__1_i_1_n_0,sample_ENABLE0_carry__1_i_2_n_0}),
        .O(NLW_sample_ENABLE0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,sample_ENABLE0_carry__1_i_3_n_0,sample_ENABLE0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    sample_ENABLE0_carry__1_i_1
       (.I0(counter_reg[18]),
        .I1(sample_ENABLE_reg_2[12]),
        .O(sample_ENABLE0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hBA)) 
    sample_ENABLE0_carry__1_i_2
       (.I0(counter_reg[17]),
        .I1(sample_ENABLE_reg_2[11]),
        .I2(counter_reg[16]),
        .O(sample_ENABLE0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    sample_ENABLE0_carry__1_i_3
       (.I0(sample_ENABLE_reg_2[12]),
        .I1(counter_reg[18]),
        .O(sample_ENABLE0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    sample_ENABLE0_carry__1_i_4
       (.I0(counter_reg[17]),
        .I1(counter_reg[16]),
        .I2(sample_ENABLE_reg_2[11]),
        .O(sample_ENABLE0_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    sample_ENABLE0_carry_i_1
       (.I0(sample_ENABLE_reg_2[3]),
        .I1(counter_reg[7]),
        .I2(counter_reg[6]),
        .I3(sample_ENABLE_reg_2[2]),
        .O(sample_ENABLE0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    sample_ENABLE0_carry_i_2
       (.I0(sample_ENABLE_reg_2[1]),
        .I1(counter_reg[5]),
        .I2(counter_reg[4]),
        .I3(sample_ENABLE_reg_2[0]),
        .O(sample_ENABLE0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sample_ENABLE0_carry_i_3
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(sample_ENABLE0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sample_ENABLE0_carry_i_4
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(sample_ENABLE0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_ENABLE0_carry_i_5
       (.I0(counter_reg[7]),
        .I1(sample_ENABLE_reg_2[3]),
        .I2(counter_reg[6]),
        .I3(sample_ENABLE_reg_2[2]),
        .O(sample_ENABLE0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    sample_ENABLE0_carry_i_6
       (.I0(counter_reg[5]),
        .I1(sample_ENABLE_reg_2[1]),
        .I2(counter_reg[4]),
        .I3(sample_ENABLE_reg_2[0]),
        .O(sample_ENABLE0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sample_ENABLE0_carry_i_7
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .O(sample_ENABLE0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sample_ENABLE0_carry_i_8
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(sample_ENABLE0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sample_ENABLE_i_1
       (.I0(reset_IBUF),
        .I1(clk_out),
        .O(sample_ENABLE_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sample_ENABLE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sample_ENABLE_i_1_n_0),
        .Q(clk_out),
        .S(sample_ENABLE0_carry__1_n_2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \second_counter[2]_i_3 
       (.I0(reset_IBUF),
        .I1(clk_out),
        .O(sample_ENABLE_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \temp[7]_i_4 
       (.I0(reset_IBUF),
        .I1(Rx_EN_IBUF),
        .I2(clk_out),
        .O(sample_ENABLE_reg_1));
endmodule

module ckl_multiplier
   (E,
    SR,
    clk_IBUF_BUFG,
    reset_IBUF,
    Tx_EN_IBUF,
    \counter_reg[3]_0 );
  output [0:0]E;
  output [0:0]SR;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input Tx_EN_IBUF;
  input [0:0]\counter_reg[3]_0 ;

  wire [0:0]E;
  wire [0:0]SR;
  wire Tx_EN_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_out_slow_i_1_n_0;
  wire [0:0]\counter_reg[3]_0 ;
  wire [3:0]counter_reg__0;
  wire [3:0]p_0_in;
  wire reset_IBUF;

  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_sequential_current_state[3]_i_1 
       (.I0(reset_IBUF),
        .I1(Tx_EN_IBUF),
        .I2(E),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    clk_out_slow_i_1
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(E),
        .I5(\counter_reg[3]_0 ),
        .O(clk_out_slow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_out_slow_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_out_slow_i_1_n_0),
        .Q(E),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_reg[3]_0 ),
        .D(p_0_in[0]),
        .Q(counter_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_reg[3]_0 ),
        .D(p_0_in[1]),
        .Q(counter_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_reg[3]_0 ),
        .D(p_0_in[2]),
        .Q(counter_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\counter_reg[3]_0 ),
        .D(p_0_in[3]),
        .Q(counter_reg__0[3]),
        .R(1'b0));
endmodule

module receive_bits
   (starter_reg_0,
    \select_reg[1]_0 ,
    Rx_PERROR_OBUF,
    Rx_FERROR_OBUF,
    Rx_VALID_OBUF,
    \temp_reg[5]_0 ,
    \Tx_DATA[4] ,
    \Tx_DATA[6] ,
    \Tx_DATA[1] ,
    Rx_DATA_OBUF,
    clk_IBUF_BUFG,
    \temp_reg[3]_0 ,
    starter_reg_1,
    reset_IBUF,
    clk_out,
    \FSM_sequential_current_state_reg[1]_0 ,
    Rx_EN_IBUF,
    \FSM_sequential_current_state_reg[3]_0 ,
    Q,
    \FSM_sequential_current_state_reg[3]_1 ,
    Tx_DATA_IBUF,
    starter_reg_2,
    \second_counter_reg[2]_0 ,
    \second_counter_reg[1]_0 ,
    SR);
  output starter_reg_0;
  output \select_reg[1]_0 ;
  output Rx_PERROR_OBUF;
  output Rx_FERROR_OBUF;
  output Rx_VALID_OBUF;
  output \temp_reg[5]_0 ;
  output \Tx_DATA[4] ;
  output \Tx_DATA[6] ;
  output \Tx_DATA[1] ;
  output [7:0]Rx_DATA_OBUF;
  input clk_IBUF_BUFG;
  input \temp_reg[3]_0 ;
  input starter_reg_1;
  input reset_IBUF;
  input clk_out;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input Rx_EN_IBUF;
  input \FSM_sequential_current_state_reg[3]_0 ;
  input [0:0]Q;
  input \FSM_sequential_current_state_reg[3]_1 ;
  input [7:0]Tx_DATA_IBUF;
  input starter_reg_2;
  input \second_counter_reg[2]_0 ;
  input \second_counter_reg[1]_0 ;
  input [0:0]SR;

  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[3]_i_1__0_n_0 ;
  wire \FSM_sequential_current_state[3]_i_2_n_0 ;
  wire \FSM_sequential_current_state[3]_i_3_n_0 ;
  wire \FSM_sequential_current_state[3]_i_4_n_0 ;
  wire \FSM_sequential_current_state[3]_i_5_n_0 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[3]_0 ;
  wire \FSM_sequential_current_state_reg[3]_1 ;
  wire [0:0]Q;
  wire [7:0]Rx_DATA_OBUF;
  wire Rx_EN_IBUF;
  wire Rx_FERROR_OBUF;
  wire Rx_PERROR_OBUF;
  wire Rx_PERROR_OBUF_inst_i_2_n_0;
  wire Rx_PERROR_OBUF_inst_i_7_n_0;
  wire Rx_VALID_OBUF;
  wire [0:0]SR;
  wire \Tx_DATA[1] ;
  wire \Tx_DATA[4] ;
  wire \Tx_DATA[6] ;
  wire [7:0]Tx_DATA_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_out;
  wire counter;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire [3:0]current_state;
  wire [3:0]p_1_in;
  wire reset_IBUF;
  wire \second_counter[0]_i_1_n_0 ;
  wire \second_counter[0]_i_2_n_0 ;
  wire \second_counter[1]_i_1_n_0 ;
  wire \second_counter[2]_i_1_n_0 ;
  wire \second_counter[2]_i_2_n_0 ;
  wire \second_counter[2]_i_4_n_0 ;
  wire \second_counter[2]_i_5_n_0 ;
  wire \second_counter[2]_i_8_n_0 ;
  wire \second_counter[2]_i_9_n_0 ;
  wire \second_counter_reg[1]_0 ;
  wire \second_counter_reg[2]_0 ;
  wire \second_counter_reg_n_0_[0] ;
  wire \second_counter_reg_n_0_[1] ;
  wire \second_counter_reg_n_0_[2] ;
  wire \select[0]_i_1_n_0 ;
  wire \select[0]_i_2_n_0 ;
  wire \select[1]_i_1_n_0 ;
  wire \select[1]_i_2_n_0 ;
  wire \select_reg[1]_0 ;
  wire \select_reg_n_0_[0] ;
  wire \select_reg_n_0_[1] ;
  wire starter_i_1_n_0;
  wire starter_i_2_n_0;
  wire starter_reg_0;
  wire starter_reg_1;
  wire starter_reg_2;
  wire \temp[0]_i_1_n_0 ;
  wire \temp[1]_i_1_n_0 ;
  wire \temp[2]_i_1_n_0 ;
  wire \temp[3]_i_1_n_0 ;
  wire \temp[3]_i_2_n_0 ;
  wire \temp[4]_i_1_n_0 ;
  wire \temp[5]_i_1_n_0 ;
  wire \temp[5]_i_2_n_0 ;
  wire \temp[6]_i_1_n_0 ;
  wire \temp[6]_i_2_n_0 ;
  wire \temp[7]_i_1_n_0 ;
  wire \temp[7]_i_2_n_0 ;
  wire \temp[7]_i_3_n_0 ;
  wire \temp_reg[3]_0 ;
  wire \temp_reg[5]_0 ;

  LUT6 #(
    .INIT(64'hA0A0A0A00808A008)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(Rx_EN_IBUF),
        .I1(\select_reg_n_0_[0] ),
        .I2(current_state[0]),
        .I3(current_state[3]),
        .I4(\FSM_sequential_current_state[3]_i_3_n_0 ),
        .I5(\select_reg_n_0_[1] ),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FB00)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1]_0 ),
        .I1(current_state[3]),
        .I2(current_state[1]),
        .I3(Rx_EN_IBUF),
        .I4(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h11011145EFFFAFFF)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(\select_reg_n_0_[1] ),
        .I1(current_state[3]),
        .I2(\select_reg_n_0_[0] ),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFC000200FE000000)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(\select_reg_n_0_[0] ),
        .I1(\select_reg_n_0_[1] ),
        .I2(current_state[3]),
        .I3(Rx_EN_IBUF),
        .I4(current_state[2]),
        .I5(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888A8AAAAAA)) 
    \FSM_sequential_current_state[3]_i_1__0 
       (.I0(Rx_EN_IBUF),
        .I1(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I2(\select_reg_n_0_[1] ),
        .I3(\FSM_sequential_current_state[3]_i_3_n_0 ),
        .I4(\FSM_sequential_current_state[3]_i_4_n_0 ),
        .I5(\FSM_sequential_current_state[3]_i_5_n_0 ),
        .O(\FSM_sequential_current_state[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \FSM_sequential_current_state[3]_i_2 
       (.I0(\select_reg_n_0_[1] ),
        .I1(\select_reg_n_0_[0] ),
        .I2(current_state[1]),
        .I3(current_state[0]),
        .I4(current_state[2]),
        .I5(current_state[3]),
        .O(\FSM_sequential_current_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_current_state[3]_i_3 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(\FSM_sequential_current_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDD5D555555D5DDDD)) 
    \FSM_sequential_current_state[3]_i_4 
       (.I0(\select_reg_n_0_[0] ),
        .I1(current_state[0]),
        .I2(\FSM_sequential_current_state_reg[3]_0 ),
        .I3(Q),
        .I4(\FSM_sequential_current_state_reg[3]_1 ),
        .I5(\temp_reg[5]_0 ),
        .O(\FSM_sequential_current_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0004FFFF)) 
    \FSM_sequential_current_state[3]_i_5 
       (.I0(\select_reg_n_0_[1] ),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[3]),
        .O(\FSM_sequential_current_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \FSM_sequential_current_state[3]_i_7 
       (.I0(Tx_DATA_IBUF[1]),
        .I1(Tx_DATA_IBUF[3]),
        .I2(Tx_DATA_IBUF[2]),
        .I3(Tx_DATA_IBUF[4]),
        .O(\Tx_DATA[1] ));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:1010,iSTATE3:0001,iSTATE4:0000,iSTATE5:1001,iSTATE6:0111,iSTATE7:0110,iSTATE8:1000,iSTATE9:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_out),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:1010,iSTATE3:0001,iSTATE4:0000,iSTATE5:1001,iSTATE6:0111,iSTATE7:0110,iSTATE8:1000,iSTATE9:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_out),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:1010,iSTATE3:0001,iSTATE4:0000,iSTATE5:1001,iSTATE6:0111,iSTATE7:0110,iSTATE8:1000,iSTATE9:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_out),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .Q(current_state[2]));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:1010,iSTATE3:0001,iSTATE4:0000,iSTATE5:1001,iSTATE6:0111,iSTATE7:0110,iSTATE8:1000,iSTATE9:0101" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(clk_out),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_current_state[3]_i_1__0_n_0 ),
        .Q(current_state[3]));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    Rx_FERROR_OBUF_inst_i_1
       (.I0(starter_reg_1),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(\select_reg_n_0_[1] ),
        .I5(current_state[3]),
        .O(Rx_FERROR_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    Rx_FERROR_OBUF_inst_i_4
       (.I0(Tx_DATA_IBUF[4]),
        .I1(Tx_DATA_IBUF[2]),
        .I2(Tx_DATA_IBUF[3]),
        .I3(Tx_DATA_IBUF[1]),
        .I4(\Tx_DATA[6] ),
        .O(\Tx_DATA[4] ));
  LUT4 #(
    .INIT(16'h6996)) 
    Rx_FERROR_OBUF_inst_i_6
       (.I0(Tx_DATA_IBUF[6]),
        .I1(Tx_DATA_IBUF[7]),
        .I2(Tx_DATA_IBUF[0]),
        .I3(Tx_DATA_IBUF[5]),
        .O(\Tx_DATA[6] ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    Rx_PERROR_OBUF_inst_i_1
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(Rx_PERROR_OBUF_inst_i_2_n_0),
        .I3(current_state[0]),
        .I4(current_state[3]),
        .I5(\FSM_sequential_current_state_reg[1]_0 ),
        .O(Rx_PERROR_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Rx_PERROR_OBUF_inst_i_2
       (.I0(\select_reg_n_0_[0] ),
        .I1(\select_reg_n_0_[1] ),
        .O(Rx_PERROR_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    Rx_PERROR_OBUF_inst_i_5
       (.I0(Rx_DATA_OBUF[5]),
        .I1(Rx_DATA_OBUF[6]),
        .I2(Rx_DATA_OBUF[3]),
        .I3(Rx_DATA_OBUF[4]),
        .I4(Rx_PERROR_OBUF_inst_i_7_n_0),
        .O(\temp_reg[5]_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    Rx_PERROR_OBUF_inst_i_7
       (.I0(Rx_DATA_OBUF[0]),
        .I1(Rx_DATA_OBUF[7]),
        .I2(Rx_DATA_OBUF[2]),
        .I3(Rx_DATA_OBUF[1]),
        .O(Rx_PERROR_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    Rx_VALID_OBUF_inst_i_1
       (.I0(starter_reg_1),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .I3(current_state[1]),
        .I4(\select_reg_n_0_[1] ),
        .I5(current_state[3]),
        .O(Rx_VALID_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h007F)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h07F0)) 
    \counter[1]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h662A)) 
    \counter[2]_i_1__0 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[0] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAA20000000)) 
    \counter[3]_i_2 
       (.I0(clk_out),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(starter_reg_0),
        .O(counter));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h62AA)) 
    \counter[3]_i_3 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[1] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \counter[3]_i_4 
       (.I0(\select_reg_n_0_[1] ),
        .I1(\select_reg_n_0_[0] ),
        .I2(current_state[3]),
        .I3(current_state[2]),
        .I4(current_state[1]),
        .I5(current_state[0]),
        .O(\select_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_1_in[0]),
        .Q(\counter_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_1_in[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_1_in[2]),
        .Q(\counter_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(counter),
        .D(p_1_in[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hAEAABFAA11000000)) 
    \second_counter[0]_i_1 
       (.I0(\second_counter_reg[2]_0 ),
        .I1(starter_reg_0),
        .I2(\second_counter[0]_i_2_n_0 ),
        .I3(\second_counter[2]_i_5_n_0 ),
        .I4(starter_reg_1),
        .I5(\second_counter_reg_n_0_[0] ),
        .O(\second_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h55551555)) 
    \second_counter[0]_i_2 
       (.I0(\select_reg[1]_0 ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[0] ),
        .O(\second_counter[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCFCCCDCC00000200)) 
    \second_counter[1]_i_1 
       (.I0(\second_counter_reg_n_0_[0] ),
        .I1(\second_counter_reg[2]_0 ),
        .I2(\second_counter[2]_i_4_n_0 ),
        .I3(\second_counter[2]_i_5_n_0 ),
        .I4(\second_counter_reg[1]_0 ),
        .I5(\second_counter_reg_n_0_[1] ),
        .O(\second_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCCCDCC00000200)) 
    \second_counter[2]_i_1 
       (.I0(\second_counter[2]_i_2_n_0 ),
        .I1(\second_counter_reg[2]_0 ),
        .I2(\second_counter[2]_i_4_n_0 ),
        .I3(\second_counter[2]_i_5_n_0 ),
        .I4(\second_counter_reg[1]_0 ),
        .I5(\second_counter_reg_n_0_[2] ),
        .O(\second_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \second_counter[2]_i_2 
       (.I0(\second_counter_reg_n_0_[1] ),
        .I1(\second_counter_reg_n_0_[0] ),
        .O(\second_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000BFFF00000000)) 
    \second_counter[2]_i_4 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\select_reg[1]_0 ),
        .I5(starter_reg_0),
        .O(\second_counter[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000441455555555)) 
    \second_counter[2]_i_5 
       (.I0(reset_IBUF),
        .I1(\temp_reg[5]_0 ),
        .I2(\FSM_sequential_current_state_reg[3]_1 ),
        .I3(starter_reg_2),
        .I4(\second_counter[2]_i_8_n_0 ),
        .I5(\second_counter[2]_i_9_n_0 ),
        .O(\second_counter[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF7F7F7FFF7)) 
    \second_counter[2]_i_8 
       (.I0(current_state[0]),
        .I1(\select_reg_n_0_[0] ),
        .I2(\select_reg_n_0_[1] ),
        .I3(current_state[2]),
        .I4(current_state[3]),
        .I5(current_state[1]),
        .O(\second_counter[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h08080800)) 
    \second_counter[2]_i_9 
       (.I0(current_state[3]),
        .I1(\select_reg_n_0_[0] ),
        .I2(\select_reg_n_0_[1] ),
        .I3(current_state[1]),
        .I4(current_state[0]),
        .O(\second_counter[2]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \second_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\second_counter[0]_i_1_n_0 ),
        .Q(\second_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\second_counter[1]_i_1_n_0 ),
        .Q(\second_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \second_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\second_counter[2]_i_1_n_0 ),
        .Q(\second_counter_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111555500010000)) 
    \select[0]_i_1 
       (.I0(reset_IBUF),
        .I1(\select_reg[1]_0 ),
        .I2(\select[0]_i_2_n_0 ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(clk_out),
        .I5(\select_reg_n_0_[0] ),
        .O(\select[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \select[0]_i_2 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[3] ),
        .O(\select[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0A3B3B3A0A08080)) 
    \select[1]_i_1 
       (.I0(\second_counter[2]_i_5_n_0 ),
        .I1(reset_IBUF),
        .I2(\select_reg[1]_0 ),
        .I3(\select[1]_i_2_n_0 ),
        .I4(clk_out),
        .I5(\select_reg_n_0_[1] ),
        .O(\select[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \select[1]_i_2 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[2] ),
        .O(\select[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \select_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\select[0]_i_1_n_0 ),
        .Q(\select_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \select_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\select[1]_i_1_n_0 ),
        .Q(\select_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEA00EA00EA00EAEA)) 
    starter_i_1
       (.I0(starter_reg_0),
        .I1(starter_i_2_n_0),
        .I2(starter_reg_1),
        .I3(\second_counter[2]_i_5_n_0 ),
        .I4(reset_IBUF),
        .I5(clk_out),
        .O(starter_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    starter_i_2
       (.I0(clk_out),
        .I1(\second_counter_reg_n_0_[1] ),
        .I2(\second_counter_reg_n_0_[0] ),
        .I3(\second_counter_reg_n_0_[2] ),
        .O(starter_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    starter_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(starter_i_1_n_0),
        .Q(starter_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF70004)) 
    \temp[0]_i_1 
       (.I0(starter_reg_1),
        .I1(\temp[3]_i_2_n_0 ),
        .I2(\temp[6]_i_2_n_0 ),
        .I3(current_state[1]),
        .I4(Rx_DATA_OBUF[0]),
        .O(\temp[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF704)) 
    \temp[1]_i_1 
       (.I0(starter_reg_1),
        .I1(\temp[3]_i_2_n_0 ),
        .I2(\temp[5]_i_2_n_0 ),
        .I3(Rx_DATA_OBUF[1]),
        .O(\temp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0040)) 
    \temp[2]_i_1 
       (.I0(starter_reg_1),
        .I1(\temp[3]_i_2_n_0 ),
        .I2(current_state[1]),
        .I3(\temp[6]_i_2_n_0 ),
        .I4(Rx_DATA_OBUF[2]),
        .O(\temp[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F40)) 
    \temp[3]_i_1 
       (.I0(starter_reg_1),
        .I1(\temp[7]_i_2_n_0 ),
        .I2(\temp[3]_i_2_n_0 ),
        .I3(Rx_DATA_OBUF[3]),
        .O(\temp[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001010101000)) 
    \temp[3]_i_2 
       (.I0(current_state[3]),
        .I1(\select_reg_n_0_[1] ),
        .I2(\select_reg_n_0_[0] ),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(current_state[2]),
        .O(\temp[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF70004)) 
    \temp[4]_i_1 
       (.I0(starter_reg_1),
        .I1(\temp[7]_i_3_n_0 ),
        .I2(\temp[6]_i_2_n_0 ),
        .I3(current_state[1]),
        .I4(Rx_DATA_OBUF[4]),
        .O(\temp[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF704)) 
    \temp[5]_i_1 
       (.I0(starter_reg_1),
        .I1(\temp[7]_i_3_n_0 ),
        .I2(\temp[5]_i_2_n_0 ),
        .I3(Rx_DATA_OBUF[5]),
        .O(\temp[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFBFFFFFFFF)) 
    \temp[5]_i_2 
       (.I0(current_state[0]),
        .I1(\select_reg_n_0_[0] ),
        .I2(current_state[3]),
        .I3(\temp_reg[3]_0 ),
        .I4(\select_reg_n_0_[1] ),
        .I5(current_state[1]),
        .O(\temp[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0040)) 
    \temp[6]_i_1 
       (.I0(starter_reg_1),
        .I1(\temp[7]_i_3_n_0 ),
        .I2(current_state[1]),
        .I3(\temp[6]_i_2_n_0 ),
        .I4(Rx_DATA_OBUF[6]),
        .O(\temp[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    \temp[6]_i_2 
       (.I0(current_state[0]),
        .I1(Rx_PERROR_OBUF_inst_i_2_n_0),
        .I2(reset_IBUF),
        .I3(Rx_EN_IBUF),
        .I4(clk_out),
        .I5(current_state[3]),
        .O(\temp[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F40)) 
    \temp[7]_i_1 
       (.I0(starter_reg_1),
        .I1(\temp[7]_i_2_n_0 ),
        .I2(\temp[7]_i_3_n_0 ),
        .I3(Rx_DATA_OBUF[7]),
        .O(\temp[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF1FF)) 
    \temp[7]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(\select_reg_n_0_[1] ),
        .I3(\select_reg_n_0_[0] ),
        .I4(current_state[3]),
        .I5(\temp_reg[3]_0 ),
        .O(\temp[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000003000000A800)) 
    \temp[7]_i_3 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(\select_reg_n_0_[0] ),
        .I4(\select_reg_n_0_[1] ),
        .I5(current_state[3]),
        .O(\temp[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp[0]_i_1_n_0 ),
        .Q(Rx_DATA_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp[1]_i_1_n_0 ),
        .Q(Rx_DATA_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp[2]_i_1_n_0 ),
        .Q(Rx_DATA_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp[3]_i_1_n_0 ),
        .Q(Rx_DATA_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp[4]_i_1_n_0 ),
        .Q(Rx_DATA_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp[5]_i_1_n_0 ),
        .Q(Rx_DATA_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp[6]_i_1_n_0 ),
        .Q(Rx_DATA_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\temp[7]_i_1_n_0 ),
        .Q(Rx_DATA_OBUF[7]),
        .R(1'b0));
endmodule

module send_bits
   (\FSM_sequential_current_state_reg[3]_0 ,
    \FSM_sequential_current_state_reg[2]_0 ,
    Q,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[2]_1 ,
    Tx_BUSY_OBUF,
    starter_reg,
    \FSM_sequential_current_state_reg[1]_1 ,
    starter_reg_0,
    \second_counter[2]_i_5 ,
    \second_counter[2]_i_5_0 ,
    Tx_DATA_IBUF,
    Tx_WR_IBUF,
    \second_counter_reg[1] ,
    SR,
    E,
    clk_IBUF_BUFG);
  output \FSM_sequential_current_state_reg[3]_0 ;
  output \FSM_sequential_current_state_reg[2]_0 ;
  output [0:0]Q;
  output \FSM_sequential_current_state_reg[1]_0 ;
  output \FSM_sequential_current_state_reg[0]_0 ;
  output \FSM_sequential_current_state_reg[2]_1 ;
  output Tx_BUSY_OBUF;
  output starter_reg;
  input \FSM_sequential_current_state_reg[1]_1 ;
  input starter_reg_0;
  input \second_counter[2]_i_5 ;
  input \second_counter[2]_i_5_0 ;
  input [7:0]Tx_DATA_IBUF;
  input Tx_WR_IBUF;
  input \second_counter_reg[1] ;
  input [0:0]SR;
  input [0:0]E;
  input clk_IBUF_BUFG;

  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_1 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire \FSM_sequential_current_state_reg[3]_0 ;
  wire [0:0]Q;
  wire Rx_FERROR_OBUF_inst_i_3_n_0;
  wire Rx_FERROR_OBUF_inst_i_7_n_0;
  wire Rx_PERROR_OBUF_inst_i_4_n_0;
  wire Rx_PERROR_OBUF_inst_i_6_n_0;
  wire [0:0]SR;
  wire Tx_BUSY_OBUF;
  wire [7:0]Tx_DATA_IBUF;
  wire Tx_WR_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]current_state__0;
  wire [3:0]next_state;
  wire \second_counter[2]_i_10_n_0 ;
  wire \second_counter[2]_i_5 ;
  wire \second_counter[2]_i_5_0 ;
  wire \second_counter_reg[1] ;
  wire starter_reg;
  wire starter_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h55555554)) 
    \FSM_sequential_current_state[0]_i_1__0 
       (.I0(current_state__0[0]),
        .I1(current_state__0[1]),
        .I2(Q),
        .I3(current_state__0[2]),
        .I4(Tx_WR_IBUF),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_current_state[1]_i_1__0 
       (.I0(current_state__0[1]),
        .I1(current_state__0[0]),
        .O(next_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \FSM_sequential_current_state[2]_i_1__0 
       (.I0(Q),
        .I1(current_state__0[1]),
        .I2(current_state__0[0]),
        .I3(current_state__0[2]),
        .O(next_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \FSM_sequential_current_state[3]_i_2__0 
       (.I0(current_state__0[2]),
        .I1(current_state__0[0]),
        .I2(current_state__0[1]),
        .I3(Q),
        .O(next_state[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFF0900)) 
    \FSM_sequential_current_state[3]_i_6 
       (.I0(\second_counter[2]_i_5 ),
        .I1(\second_counter[2]_i_5_0 ),
        .I2(current_state__0[0]),
        .I3(current_state__0[1]),
        .I4(Rx_FERROR_OBUF_inst_i_3_n_0),
        .O(\FSM_sequential_current_state_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:1011,iSTATE3:1010,iSTATE4:0001,iSTATE5:0000,iSTATE6:1001,iSTATE7:0111,iSTATE8:0110,iSTATE9:1000,iSTATE10:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(next_state[0]),
        .Q(current_state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:1011,iSTATE3:1010,iSTATE4:0001,iSTATE5:0000,iSTATE6:1001,iSTATE7:0111,iSTATE8:0110,iSTATE9:1000,iSTATE10:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(next_state[1]),
        .Q(current_state__0[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:1011,iSTATE3:1010,iSTATE4:0001,iSTATE5:0000,iSTATE6:1001,iSTATE7:0111,iSTATE8:0110,iSTATE9:1000,iSTATE10:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(next_state[2]),
        .Q(current_state__0[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "iSTATE:0011,iSTATE0:0100,iSTATE1:0010,iSTATE2:1011,iSTATE3:1010,iSTATE4:0001,iSTATE5:0000,iSTATE6:1001,iSTATE7:0111,iSTATE8:0110,iSTATE9:1000,iSTATE10:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(next_state[3]),
        .Q(Q),
        .R(SR));
  LUT6 #(
    .INIT(64'hAAAE0000AAAEAAAE)) 
    Rx_FERROR_OBUF_inst_i_2
       (.I0(Rx_FERROR_OBUF_inst_i_3_n_0),
        .I1(current_state__0[1]),
        .I2(current_state__0[0]),
        .I3(starter_reg_0),
        .I4(Q),
        .I5(\FSM_sequential_current_state_reg[2]_0 ),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0047FFFF)) 
    Rx_FERROR_OBUF_inst_i_3
       (.I0(Tx_DATA_IBUF[7]),
        .I1(current_state__0[0]),
        .I2(Tx_DATA_IBUF[6]),
        .I3(current_state__0[1]),
        .I4(Q),
        .O(Rx_FERROR_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hB8BB88BBB88888BB)) 
    Rx_FERROR_OBUF_inst_i_5
       (.I0(Rx_FERROR_OBUF_inst_i_7_n_0),
        .I1(current_state__0[2]),
        .I2(Tx_DATA_IBUF[1]),
        .I3(current_state__0[0]),
        .I4(current_state__0[1]),
        .I5(Tx_DATA_IBUF[0]),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Rx_FERROR_OBUF_inst_i_7
       (.I0(Tx_DATA_IBUF[5]),
        .I1(Tx_DATA_IBUF[4]),
        .I2(current_state__0[1]),
        .I3(Tx_DATA_IBUF[3]),
        .I4(current_state__0[0]),
        .I5(Tx_DATA_IBUF[2]),
        .O(Rx_FERROR_OBUF_inst_i_7_n_0));
  LUT5 #(
    .INIT(32'h222FDDD0)) 
    Rx_PERROR_OBUF_inst_i_3
       (.I0(\FSM_sequential_current_state_reg[2]_0 ),
        .I1(Q),
        .I2(Rx_PERROR_OBUF_inst_i_4_n_0),
        .I3(Rx_FERROR_OBUF_inst_i_3_n_0),
        .I4(\FSM_sequential_current_state_reg[1]_1 ),
        .O(\FSM_sequential_current_state_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h1441411441141441)) 
    Rx_PERROR_OBUF_inst_i_4
       (.I0(Rx_PERROR_OBUF_inst_i_6_n_0),
        .I1(\second_counter[2]_i_5_0 ),
        .I2(Tx_DATA_IBUF[1]),
        .I3(Tx_DATA_IBUF[3]),
        .I4(Tx_DATA_IBUF[2]),
        .I5(Tx_DATA_IBUF[4]),
        .O(Rx_PERROR_OBUF_inst_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hB)) 
    Rx_PERROR_OBUF_inst_i_6
       (.I0(current_state__0[0]),
        .I1(current_state__0[1]),
        .O(Rx_PERROR_OBUF_inst_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3776)) 
    Tx_BUSY_OBUF_inst_i_1
       (.I0(current_state__0[2]),
        .I1(Q),
        .I2(current_state__0[1]),
        .I3(current_state__0[0]),
        .O(Tx_BUSY_OBUF));
  LUT4 #(
    .INIT(16'hB383)) 
    \second_counter[2]_i_10 
       (.I0(Tx_DATA_IBUF[1]),
        .I1(current_state__0[0]),
        .I2(current_state__0[1]),
        .I3(Tx_DATA_IBUF[0]),
        .O(\second_counter[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hAEAEAEFF)) 
    \second_counter[2]_i_6 
       (.I0(\second_counter_reg[1] ),
        .I1(\FSM_sequential_current_state_reg[2]_0 ),
        .I2(Q),
        .I3(Rx_PERROR_OBUF_inst_i_4_n_0),
        .I4(Rx_FERROR_OBUF_inst_i_3_n_0),
        .O(starter_reg));
  LUT4 #(
    .INIT(16'h00E2)) 
    \second_counter[2]_i_7 
       (.I0(\second_counter[2]_i_10_n_0 ),
        .I1(current_state__0[2]),
        .I2(Rx_FERROR_OBUF_inst_i_7_n_0),
        .I3(Q),
        .O(\FSM_sequential_current_state_reg[2]_1 ));
endmodule

module uart_receiver
   (starter_reg,
    Rx_PERROR_OBUF,
    Rx_FERROR_OBUF,
    Rx_VALID_OBUF,
    \temp_reg[5] ,
    \Tx_DATA[4] ,
    \Tx_DATA[6] ,
    \Tx_DATA[1] ,
    Rx_DATA_OBUF,
    clk_IBUF_BUFG,
    starter_reg_0,
    reset_IBUF,
    \FSM_sequential_current_state_reg[1] ,
    Rx_EN_IBUF,
    \FSM_sequential_current_state_reg[3] ,
    Q,
    \FSM_sequential_current_state_reg[3]_0 ,
    Tx_DATA_IBUF,
    sample_ENABLE_reg,
    starter_reg_1,
    \second_counter_reg[1] );
  output starter_reg;
  output Rx_PERROR_OBUF;
  output Rx_FERROR_OBUF;
  output Rx_VALID_OBUF;
  output \temp_reg[5] ;
  output \Tx_DATA[4] ;
  output \Tx_DATA[6] ;
  output \Tx_DATA[1] ;
  output [7:0]Rx_DATA_OBUF;
  input clk_IBUF_BUFG;
  input starter_reg_0;
  input reset_IBUF;
  input \FSM_sequential_current_state_reg[1] ;
  input Rx_EN_IBUF;
  input \FSM_sequential_current_state_reg[3] ;
  input [0:0]Q;
  input \FSM_sequential_current_state_reg[3]_0 ;
  input [7:0]Tx_DATA_IBUF;
  input [12:0]sample_ENABLE_reg;
  input starter_reg_1;
  input \second_counter_reg[1] ;

  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[3] ;
  wire \FSM_sequential_current_state_reg[3]_0 ;
  wire [0:0]Q;
  wire [7:0]Rx_DATA_OBUF;
  wire Rx_EN_IBUF;
  wire Rx_FERROR_OBUF;
  wire Rx_PERROR_OBUF;
  wire Rx_VALID_OBUF;
  wire \Tx_DATA[1] ;
  wire \Tx_DATA[4] ;
  wire \Tx_DATA[6] ;
  wire [7:0]Tx_DATA_IBUF;
  wire baud_controller_rx_inst_n_1;
  wire baud_controller_rx_inst_n_2;
  wire baud_controller_rx_inst_n_3;
  wire clk_IBUF_BUFG;
  wire clk_out;
  wire receive_n_1;
  wire reset_IBUF;
  wire [12:0]sample_ENABLE_reg;
  wire \second_counter_reg[1] ;
  wire starter_reg;
  wire starter_reg_0;
  wire starter_reg_1;
  wire \temp_reg[5] ;

  baud_controller_0 baud_controller_rx_inst
       (.Rx_EN_IBUF(Rx_EN_IBUF),
        .SR(baud_controller_rx_inst_n_3),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_out(clk_out),
        .\counter_reg[0]_0 (receive_n_1),
        .reset_IBUF(reset_IBUF),
        .sample_ENABLE_reg_0(baud_controller_rx_inst_n_1),
        .sample_ENABLE_reg_1(baud_controller_rx_inst_n_2),
        .sample_ENABLE_reg_2(sample_ENABLE_reg));
  receive_bits receive
       (.\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[3]_0 (\FSM_sequential_current_state_reg[3] ),
        .\FSM_sequential_current_state_reg[3]_1 (\FSM_sequential_current_state_reg[3]_0 ),
        .Q(Q),
        .Rx_DATA_OBUF(Rx_DATA_OBUF),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .Rx_FERROR_OBUF(Rx_FERROR_OBUF),
        .Rx_PERROR_OBUF(Rx_PERROR_OBUF),
        .Rx_VALID_OBUF(Rx_VALID_OBUF),
        .SR(baud_controller_rx_inst_n_3),
        .\Tx_DATA[1] (\Tx_DATA[1] ),
        .\Tx_DATA[4] (\Tx_DATA[4] ),
        .\Tx_DATA[6] (\Tx_DATA[6] ),
        .Tx_DATA_IBUF(Tx_DATA_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .clk_out(clk_out),
        .reset_IBUF(reset_IBUF),
        .\second_counter_reg[1]_0 (\second_counter_reg[1] ),
        .\second_counter_reg[2]_0 (baud_controller_rx_inst_n_1),
        .\select_reg[1]_0 (receive_n_1),
        .starter_reg_0(starter_reg),
        .starter_reg_1(starter_reg_0),
        .starter_reg_2(starter_reg_1),
        .\temp_reg[3]_0 (baud_controller_rx_inst_n_2),
        .\temp_reg[5]_0 (\temp_reg[5] ));
endmodule

module uart_transmitter
   (\FSM_sequential_current_state_reg[3] ,
    \FSM_sequential_current_state_reg[2] ,
    Q,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[2]_0 ,
    Tx_BUSY_OBUF,
    starter_reg,
    D,
    clk_IBUF_BUFG,
    reset_IBUF,
    Tx_EN_IBUF,
    \FSM_sequential_current_state_reg[1]_0 ,
    starter_reg_0,
    \second_counter[2]_i_5 ,
    \second_counter[2]_i_5_0 ,
    Tx_DATA_IBUF,
    \counter_reg[18] ,
    Tx_WR_IBUF,
    \second_counter_reg[1] ,
    baud_select_IBUF);
  output \FSM_sequential_current_state_reg[3] ;
  output \FSM_sequential_current_state_reg[2] ;
  output [0:0]Q;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[0] ;
  output \FSM_sequential_current_state_reg[2]_0 ;
  output Tx_BUSY_OBUF;
  output starter_reg;
  output [9:0]D;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input Tx_EN_IBUF;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input starter_reg_0;
  input \second_counter[2]_i_5 ;
  input \second_counter[2]_i_5_0 ;
  input [7:0]Tx_DATA_IBUF;
  input [12:0]\counter_reg[18] ;
  input Tx_WR_IBUF;
  input \second_counter_reg[1] ;
  input [2:0]baud_select_IBUF;

  wire [9:0]D;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[3] ;
  wire [0:0]Q;
  wire Tx_BUSY_OBUF;
  wire [7:0]Tx_DATA_IBUF;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select_IBUF;
  wire clk_IBUF_BUFG;
  wire clk_out;
  wire clk_out_slow;
  wire [12:0]\counter_reg[18] ;
  wire multiply_n_1;
  wire reset_IBUF;
  wire \second_counter[2]_i_5 ;
  wire \second_counter[2]_i_5_0 ;
  wire \second_counter_reg[1] ;
  wire starter_reg;
  wire starter_reg_0;

  baud_controller baud_controller_tx_inst
       (.D(D),
        .E(clk_out),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[18]_0 (\counter_reg[18] ),
        .reset_IBUF(reset_IBUF));
  ckl_multiplier multiply
       (.E(clk_out_slow),
        .SR(multiply_n_1),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[3]_0 (clk_out),
        .reset_IBUF(reset_IBUF));
  send_bits transmit
       (.E(clk_out_slow),
        .\FSM_sequential_current_state_reg[0]_0 (\FSM_sequential_current_state_reg[0] ),
        .\FSM_sequential_current_state_reg[1]_0 (\FSM_sequential_current_state_reg[1] ),
        .\FSM_sequential_current_state_reg[1]_1 (\FSM_sequential_current_state_reg[1]_0 ),
        .\FSM_sequential_current_state_reg[2]_0 (\FSM_sequential_current_state_reg[2] ),
        .\FSM_sequential_current_state_reg[2]_1 (\FSM_sequential_current_state_reg[2]_0 ),
        .\FSM_sequential_current_state_reg[3]_0 (\FSM_sequential_current_state_reg[3] ),
        .Q(Q),
        .SR(multiply_n_1),
        .Tx_BUSY_OBUF(Tx_BUSY_OBUF),
        .Tx_DATA_IBUF(Tx_DATA_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\second_counter[2]_i_5 (\second_counter[2]_i_5 ),
        .\second_counter[2]_i_5_0 (\second_counter[2]_i_5_0 ),
        .\second_counter_reg[1] (\second_counter_reg[1] ),
        .starter_reg(starter_reg),
        .starter_reg_0(starter_reg_0));
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

`timescale 1ns/1ps  

module PartB_tb;
    reg reset, clk, Tx_EN, Tx_WR;
    reg [7:0] Tx_DATA;
    reg [2:0] baud_select;
    wire TxD, Tx_BUSY, clk_out, select;
    wire [3:0] current_state, next_state, counter;

    uart_transmitter testb(reset, clk, Tx_DATA, baud_select, Tx_WR, Tx_EN, TxD, Tx_BUSY);//, clk_out, current_state, next_state, select, counter);
    
    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; end
  
    //Clock generation of 100 MHz
    always #5 clk = ~clk;

    initial begin
        baud_select = 3'b111;
        Tx_DATA = 8'b10101010;
        Tx_WR = 1'b0;
        Tx_EN = 1'b1;
        reset = 1'b1;
        #1000000 reset = 1'b0;    
        #48000 Tx_WR = 1'b1;
        #8800 Tx_WR = 1'b0;
        #114400 Tx_DATA = 8'b01010101; 
         Tx_WR = 1'b1;
        #8800 Tx_WR = 1'b0;
        #114400 Tx_DATA = 8'b11001100; 
         Tx_WR = 1'b1;
        #8800 Tx_WR = 1'b0;
        #114400 Tx_DATA = 8'b10001001; 
         Tx_WR = 1'b1;
        #8800 Tx_WR = 1'b0;         
    end
endmodule
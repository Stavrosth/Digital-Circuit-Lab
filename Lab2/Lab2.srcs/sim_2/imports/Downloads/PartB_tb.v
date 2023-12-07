`timescale 1ns/1ps  

module PartB_tb;
    reg reset, clk, Tx_EN, Tx_WR;
    reg [7:0] Tx_DATA;
    reg [2:0] baud_select;
    wire TxD, Tx_BUSY, clk_out, select;
    wire [3:0] sum_inputs, current_state, next_state;

    uart_transmitter testb(.reset(reset), .clk(clk), .Tx_DATA(Tx_DATA), .baud_select(baud_select), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .TxD(TxD), .Tx_BUSY(Tx_BUSY), .sum_inputs(sum_inputs));//, .clk_out_use(clk_out), .current_state_use(current_state), .next_state_use(next_state), .select(select));

    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; end
  
    //Clock generation of 100 MHz
    always #5 clk = ~clk;

    initial begin
        baud_select = 3'b111;
        Tx_DATA = 8'b10101010;
        Tx_WR = 1'b0;
        Tx_EN = 1'b1;
        #100 reset = 1'b1;
        #10000000 reset = 1'b0;    
        #350 Tx_WR = 1'b1;
        #3600000 Tx_WR = 1'b0;
        Tx_DATA = 8'b11001100;
        #50400000 Tx_WR = 1'b1;
        #3600000 Tx_WR = 1'b0;
        #50400000 reset = 1'b1;
        #3600000 reset = 1'b0;
        Tx_DATA = 8'b10001001;
        Tx_WR = 1'b1;
        #3600000 Tx_WR = 1'b0;
#96800
Tx_DATA = 8'b11001100;
        #1000000 reset = 1'b0;
       
Tx_DATA = 8'b10001001;
    end 
endmodule
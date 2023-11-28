`timescale 1ns/1ps  

module PartB_tb;
    reg reset, clk, Tx_EN, Tx_WR;
    reg [2:0] baud_select;
    reg [7:0] Tx_DATA;
    wire TxD, Tx_BUSY;
    wire [3:0] sum_inputs, counter, set_clk_counter

    uart_transmitter testb(.reset(reset), .clk(clk), .Tx_DATA(Tx_DATA), .baud_select(baud_select), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .TxD(TxD), .Tx_BUSY(Tx_BUSY), .sum_inputs_use(sum_inputs), .counter_use(counter), .set_clk_counter_use(set_clk_counter));

    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; end
    
    //Clock generation of 100 MHz
    always #5 clk = ~clk;

    initial begin
        #350 reset = 1'b1;
        #200 reset = 1'b0;
        #300 Tx_EN = 1'b1;
        #100 Tx_Data = 8'b10101010;
        #350 Tx_WR = 1'b0;
        #500 baud_select = 3'b111;
    end 

endmodule
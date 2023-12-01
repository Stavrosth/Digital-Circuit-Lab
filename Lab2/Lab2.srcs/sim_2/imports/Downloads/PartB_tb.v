`timescale 1ns/1ps  

module PartB_tb;
    reg reset, clk, Tx_EN, Tx_WR;
    reg [7:0] Tx_DATA;
    reg [2:0] baud_select;
    wire TxD, Tx_BUSY, clk_out, busy_select;
    wire [3:0] counter, set_clk_counter;
    wire [3:0] sum_inputs, second_counter;
  
    uart_transmitter testb(.reset(reset), .clk(clk), .Tx_DATA(Tx_DATA), .baud_select(baud_select), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .TxD(TxD), .Tx_BUSY(Tx_BUSY), .sum_inputs(sum_inputs), .counter_use(counter), .set_clk_counter_use(set_clk_counter), .clk_out_use(clk_out), .busy_select_use(busy_select) .second_counter_use(second_counter));
                                      //  smitter(reset, clk, Tx_DATA, baud_select, Tx_WR, Tx_EN, TxD, Tx_BUSY, sum_inputs, counter_use, set_clk_counter_use, clk_out_use, busy_select_use, second_counter_use);
    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; end
    
    //Clock generation of 100 MHz
    always #5 clk = ~clk;

    initial begin
        Tx_DATA = 8'b10101010;
        Tx_WR = 1'b0;
        baud_select = 3'b000;
        Tx_EN = 1'b1;
        #200 reset = 1'b1;
        #1000 reset = 1'b0;
        #350 Tx_WR = 1'b1;
        #2100000 Tx_WR = 1'b0;
        #3000000 Tx_WR = 1'b1;
        #1000000 Tx_WR = 1'b0;
    end 

endmodule
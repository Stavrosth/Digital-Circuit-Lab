`timescale 1ns/1ps  

module PartC_tb;
    reg reset, clk, Rx_EN, RxD;
    reg [2:0] baud_select;
    wire [7:0] Rx_DATA;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID;

    /* Test Parameters */
    wire [3:0] current_state, next_state;
    wire [4:0] counter_begin;
    wire [7:0] temp;
    wire starter, select_begin, clk_out, clk_out_slow;

    uart_receiver rceive_test(reset, clk, Rx_DATA, baud_select, Rx_EN, RxD, Rx_FERROR, Rx_PERROR, Rx_VALID, current_state, next_state, counter_begin, temp, select_begin, starter, clk_out_slow, clk_out);

    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; end
  
    //Clock generation of 100 MHz
    always #5 clk = ~clk;

    initial begin
        baud_select = 3'b0;
        Rx_EN = 1'b1;
        reset = 1'b1;
        RxD = 1'b1;
        #1000000 reset = 1'b0;
        #350 RxD = 1'b0;
        #4000000 RxD = 1'b1;
        #4000000 RxD = 1'b0;
        #4000000 RxD = 1'b1;
        #4000000 RxD = 1'b0;
        #4000000 RxD = 1'b1;
        #4000000 RxD = 1'b0;
        #4000000 RxD = 1'b1;
        #4000000 RxD = 1'b1;
        #4000000 RxD = 1'b0;
        #4000000 RxD = 1'b1;
    end

endmodule
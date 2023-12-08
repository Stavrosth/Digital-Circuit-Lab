`timescale 1ns/1ps  

module PartC_tb;
    reg reset, clk, Rx_EN, RxD;
    reg [2:0] baud_select;
    wire [7:0] Rx_DATA;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID;

    /* Test Parameters */
    wire [3:0] current_state, next_state;
    wire [4:0] counter;
    wire [7:0] temp;
    wire clk_out, starter;
    wire [1:0] select;

    uart_receiver rceive_test(reset, clk, Rx_DATA, baud_select, Rx_EN, RxD, Rx_FERROR, Rx_PERROR, Rx_VALID);//, current_state, next_state, counter, temp, select, clk_out, starter);

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
        #48000 RxD = 1'b0;//start bit
        #8800 RxD = 1'b1;//10101010
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b0;//parity bit
        #8800 RxD = 1'b1;//stop bit
        #8800 RxD = 1'b0;//start bit
        #8800 RxD = 1'b0;//01010101
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b0;//parity bit
        #8800 RxD = 1'b1;//stop bit
        #8800 RxD = 1'b0;//start bit
        #8800 RxD = 1'b1;//11001100
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b0;//parity bit
        #8800 RxD = 1'b1;//stop bit
        #8800 RxD = 1'b0;//start bit
        #8800 RxD = 1'b1;//10001001
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b0;
        #8800 RxD = 1'b1;
        #8800 RxD = 1'b1;//parity bit
        #8800 RxD = 1'b1;//stop bit 
    end
endmodule
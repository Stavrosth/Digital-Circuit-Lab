`timescale 1ns/1ps  

module PartB_tb;
    reg clk, reset;
    wire Hsync, Hsync_allow;
    wire [6:0] Hpixel;

    Hsync testA(clk, reset, Hsync, Hpixel, Hsync_allow);

    //initializes the clk and reset values
    initial begin 
        clk = 1'b0; 
        reset = 1'b1; 
        #100 reset = 1'b0;
        end
  
    //Clock generation of 100 MHz (same as FPGA)
    always #5 clk = ~clk;
endmodule
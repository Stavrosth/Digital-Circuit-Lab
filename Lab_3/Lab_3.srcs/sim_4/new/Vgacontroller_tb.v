`timescale 1ns/1ps  

module Vgacontroller_tb;
    reg clk, reset;
    wire VGA_RED, VGA_GREEN, VGA_BLUE;

    vgacontroller TEST(reset, clk, VGA_RED, VGA_GREEN, VGA_BLUE, VGA_HSYNC, VGA_VSYNC);

    //initializes the clk and reset values
    initial begin 
        clk = 1'b0; 
        reset = 1'b1; 
        #100 reset = 1'b0;
    end
  
    //Clock generation of 100 MHz (same as FPGA)
    always #5 clk = ~clk;
endmodule
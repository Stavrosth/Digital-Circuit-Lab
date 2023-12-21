`timescale 1ns/1ps  

module PartC_tb;
    reg clk, reset;
    wire Vsync, Vsync_allow;
    wire [6:0] Vpixel;

    Vsync testB(clk, reset, Vsync, Vpixel, Vsync_allow);

    //initializes the clk and reset values
    initial begin 
        clk = 1'b0; 
        reset = 1'b1; 
        #100 reset = 1'b0;
        end
  
    //Clock generation of 100 MHz (same as FPGA)
    always #5 clk = ~clk;
endmodule
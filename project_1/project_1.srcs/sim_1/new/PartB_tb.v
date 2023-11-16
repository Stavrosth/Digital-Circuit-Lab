`timescale 1ns/1ps

module PartB_tb;
    reg clk, reset;
    wire an3, an2, an1, an0;
    wire a, b, c, d, e, f, g, dp;
    wire [3:0] test1; //char

    FourDigitLEDdriver test2(reset, clk, an3, an2, an1, an0, a, b, c, d, e, f, g, dp);//, test1);
    
    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; end
    
    //Clock generation 
    always #5 clk = ~clk;

    //checks if the reset works correctly
    initial begin
        #350 reset = 1'b1;
        #200 reset = 1'b0;
    end 
endmodule
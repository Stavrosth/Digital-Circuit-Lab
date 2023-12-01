`timescale 1ns/1ps

module PartD_tb;
    reg clk, reset;
    wire an3, an2, an1, an0;
    wire a, b, c, d, e, f, g, dp;
    wire [3:0] pointer, char;
    wire [22:0] big_counter;

    AutoRotate test4(clk, reset, an3, an2, an1, an0, a, b, c, d, e, f, g, dp);//, pointer, big_counter, char);

    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; end
    
    //Clock generation 
    always #5 clk = ~clk;

    initial begin
        #100 reset = 1'b1;
        #150 reset = 1'b0;
    end
    
endmodule
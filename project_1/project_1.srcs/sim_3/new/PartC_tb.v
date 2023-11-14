`timescale 1ns/1ps

module PartC_tb;
    reg clk, reset, button_move;
    wire an3, an2, an1, an0;
    wire a, b, c, d, e, f, g, dp;
    wire [3:0] pointer, char;
    wire [10:0] button;

    ButtonRotate test3(clk, reset, an3, an2, an1, an0, a, b, c, d, e, f, g, dp, button_move, pointer, button, char);

    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b1; end
    
    //Clock generation 
    always #5 clk = ~clk;

    //checks if the reset works correctly
    initial begin
        //#500 reset = 1'b0;
        #1 reset = 1'b0;
        #5 button_move = 1'b1;
        #50000 button_move = 1'b0;
       // #1000 button_move = 1'b0;
        //#7000 button_move = 1'b0;
        //#1500 reset = 1'b1;
        //#2000 reset = 1'b0;
        //#15000button_move = 1'b1;
        //#20000button_move = 1'b0;
    end

endmodule
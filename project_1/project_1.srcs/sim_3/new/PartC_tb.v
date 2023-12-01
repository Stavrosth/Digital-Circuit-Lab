`timescale 1ns/1ps

module PartC_tb;
    reg clk, reset, button_move;
    wire an3, an2, an1, an0;
    wire a, b, c, d, e, f, g, dp;
    wire [3:0] pointer, char, count_use;
    wire [10:0] button;
    wire [5:0] third_counter;
    wire clk_out;

    ButtonRotate test3(clk, reset, an3, an2, an1, an0, a, b, c, d, e, f, g, dp, button_move, pointer, button, char, count_use, clk_out);

    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; end
    
    //Clock generation 
    always #5 clk = ~clk;

    //checks if the reset works correctly
    initial begin
        //#500 reset = 1'b0;
        #100 reset = 1'b1;
        #150 reset = 1'b0;
        #200 button_move = 1'b1;
        #10000 button_move = 1'b0;
        #41000 button_move = 1'b1;
        #42000 button_move = 1'b0;
        #4350 button_move = 1'b1;
        #50000 button_move = 1'b0;
        #51000 button_move = 1'b1;
        #53000 button_move = 1'b0;
        #55000 button_move = 1'b1;
        #57000 button_move = 1'b0;
        #60000 button_move = 1'b1;
        #62000 button_move = 1'b0;
        #65000 button_move = 1'b1;
        #72000 button_move = 1'b0;
        #7350 button_move = 1'b1;
        #80000 button_move = 1'b0;
        #81000 button_move = 1'b1;
        #83000 button_move = 1'b0;
        #85000 button_move = 1'b1;
        #87000 button_move = 1'b0;
        #90000 button_move = 1'b1;
        #92000 button_move = 1'b0;
        #95000 button_move = 1'b1;
        #97000 button_move = 1'b0;
        #99000 button_move = 1'b1;
        #100000 button_move = 1'b0;
        #102000 button_move = 1'b1;
        
        #1000 button_move = 1'b0;
        #2000 button_move = 1'b1;
        #3000 reset = 1'b1;
        #5000 reset = 1'b0;
        #15000 button_move = 1'b1;
        #20000 button_move = 1'b0;
    end

endmodule
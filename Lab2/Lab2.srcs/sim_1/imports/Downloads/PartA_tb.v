`timescale 1ns/1ps  

module PartA_tb;
    reg reset, clk;
    reg [2:0] baud_select;
    wire sample_ENABLE;
    wire [14:0] counter;

    baud_controller test(.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE));//, .counter_out(counter));

    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; end
    
    //Clock generation of 100 MHz
    always #5 clk = ~clk;

    //tests all the valuse of the baud select in order to test all the baud rates
    initial begin
        #500 reset = 1'b1;
        #200 reset = 1'b0;
        #500 baud_select = 3'b000;
        #1000000 baud_select = 3'b001;
        #1000000 baud_select = 3'b010;
        #1000000 baud_select = 3'b100;
        #1000000 baud_select = 3'b101;
        #1000000 baud_select = 3'b110;
        #1000000 baud_select = 3'b111;
    end 

endmodule
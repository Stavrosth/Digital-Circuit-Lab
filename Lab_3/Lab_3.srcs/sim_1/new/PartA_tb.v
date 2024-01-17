`timescale 1ns/1ps  

module PartA_tb;
    reg clk, reset;
    reg [13:0] address;

    wire VGA_RED, VGA_GREEN, VGA_BLUE;

    //calls the vrams
    VRAMred   testAred  (.DO(VGA_RED)  , .ADDR(address), .CLK(clk), .RST(reset));
    VRAMgreen testAgreen(.DO(VGA_GREEN), .ADDR(address), .CLK(clk), .RST(reset));
    VRAMblue  testAblue (.DO(VGA_BLUE) , .ADDR(address), .CLK(clk), .RST(reset));

    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; address = 14'd0; end
  
    //Clock generation of 100 MHz (same as FPGA)
    always begin 
        #5 clk = ~clk;
        address = address + 1'b1;
    end

endmodule
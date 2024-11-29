`timescale 1ns/1ps  

module PartA_tb;
    reg clk, reset;
    reg [13:0] address;

    wire VGA_RED, VGA_GREEN, VGA_BLUE;

    //calls the vrams
    VRAMred testAred(.DO(VGA_RED)  , .ADDR(address), .CLK(clk), .DI(0), .EN(1), .REGCE(0), .RST(reset), .WE(0));
    VRAMgreen testAgreen(.DO(VGA_GREEN)  , .ADDR(address), .CLK(clk), .DI(0), .EN(1), .REGCE(0), .RST(reset), .WE(0));
    VRAMblue testAblue(.DO(VGA_BLUE)  , .ADDR(address), .CLK(clk), .DI(0), .EN(1), .REGCE(0), .RST(reset), .WE(0));

    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; address = 14'd128; end
  
    //Clock generation of 100 MHz (same as FPGA)
    always #5 clk = ~clk;

    initial begin
        address = 14'd128;        //red=F
        #10000 address = 14'd2176;//green=F
        #10000 address = 14'd4224;//blue=F
        #10000 address = 14'd6384;//all=F
        #10000 $finish;
    end

endmodule
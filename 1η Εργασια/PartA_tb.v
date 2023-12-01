`timescale 1ns/1ps

module PartA_tb;
    reg [3:0] char;
    wire [6:0] LED;

    LEDdecoder test(.char(char), .LED(LED));

    initial begin
        #10 char = 4'b0000;
        #10 char = 4'b0001;
        #10 char = 4'b0010;
        #10 char = 4'b0011;
        #10 char = 4'b0100;
        #10 char = 4'b0101;
        #10 char = 4'b0110;
        #10 char = 4'b0111;
        #10 char = 4'b1000;
        #10 char = 4'b1001;
        #10 char = 4'b1010;
        #10 char = 4'b1011;
        #10 char = 4'b1100;
        #10 char = 4'b1101;
        #10 char = 4'b1110;
        #10 char = 4'b1111;
        $finish;
    end
endmodule
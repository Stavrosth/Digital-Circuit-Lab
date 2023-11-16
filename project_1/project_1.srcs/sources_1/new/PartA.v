module LEDdecoder(char, LED);
    input [3:0] char;
    output reg [7:0] LED;

    always @(char) begin
        case(char)
            4'b0000: LED = 8'b00000011; //7e
            4'b0001: LED = 8'b10011111; //30
            4'b0010: LED = 8'b00100101; //6d
            4'b0011: LED = 8'b00001101; //79
            4'b0100: LED = 8'b10011001; //33
            4'b0101: LED = 8'b01001001; //5b
            4'b0110: LED = 8'b01000001; //5f
            4'b0111: LED = 8'b00011111; //70
            4'b1000: LED = 8'b00000001; //7f
            4'b1001: LED = 8'b00001001; //7b
            4'b1010: LED = 8'b00010001; //77
            4'b1011: LED = 8'b11000001; //1f
            4'b1100: LED = 8'b01100011; //4e
            4'b1101: LED = 8'b10000101; //3d
            4'b1110: LED = 8'b01100001; //4f
            4'b1111: LED = 8'b01110001; //47
        endcase
    end
    
endmodule
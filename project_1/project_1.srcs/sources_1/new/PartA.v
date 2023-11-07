module LEDdecoder(char, LED);
    input [3:0] char;
    output reg [6:0] LED;

    always @(char) begin
        case(char)
            4'b0000: LED = 7'b1111110; //7e
            4'b0001: LED = 7'b0110000; //30
            4'b0010: LED = 7'b1101101; //6d
            4'b0011: LED = 7'b1111001; //79
            4'b0100: LED = 7'b0110011; //33
            4'b0101: LED = 7'b1011011; //5b
            4'b0110: LED = 7'b1011111; //5f
            4'b0111: LED = 7'b1110000; //70
            4'b1000: LED = 7'b1111111; //7f
            4'b1001: LED = 7'b1111011; //7b
            4'b1010: LED = 7'b1110111; //77
            4'b1011: LED = 7'b0011111; //1f
            4'b1100: LED = 7'b1001110; //4e
            4'b1101: LED = 7'b0111101; //3d
            4'b1110: LED = 7'b1001111; //4f
            4'b1111: LED = 7'b1000111; //47
        endcase
    end
    
endmodule
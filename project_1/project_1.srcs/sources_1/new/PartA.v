module LEDdecoder(char, LED);
    input [3:0] char;
    output reg [6:0] LED;

    always @(char) begin
        case(char)
            4'b0000: LED = 7'b0000001; //7e
            4'b0001: LED = 7'b1001111; //30
            4'b0010: LED = 7'b0010010; //6d
            4'b0011: LED = 7'b0000110; //79
            4'b0100: LED = 7'b1001100; //33
            4'b0101: LED = 7'b0100100; //5b
            4'b0110: LED = 7'b0100000; //5f
            4'b0111: LED = 7'b0001111; //70
            4'b1000: LED = 7'b0000000; //7f
            4'b1001: LED = 7'b0000100; //7b
            4'b1010: LED = 7'b0001000; //77
            4'b1011: LED = 7'b1100000; //1f
            4'b1100: LED = 7'b0110001; //4e
            4'b1101: LED = 7'b1000010; //3d
            4'b1110: LED = 7'b0110000; //4f
            4'b1111: LED = 7'b0111000; //47
        endcase
    end
    
endmodule
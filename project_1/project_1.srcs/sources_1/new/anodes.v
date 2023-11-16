module anodes(counter, char, anodes, start_bit); //Drives Anodes
    input [3:0] counter, start_bit;
    output reg [3:0] anodes, char;
    
    /*based on the counter the right anode is beeing opened 
      and the right message is beingdisplayed */
    always @(counter) begin
        case(counter)
            4'b0000:begin anodes =4'b1111; char = start_bit;       end
            4'b0001:begin anodes =4'b1111; char = start_bit+2'b11; end
            4'b0010:begin anodes =4'b1110; char = start_bit+2'b11; end
            4'b0011:begin anodes =4'b1111; char = start_bit+2'b11; end
            4'b0100:begin anodes =4'b1111; char = start_bit+2'b11; end
            4'b0101:begin anodes =4'b1111; char = start_bit+2'b10; end
            4'b0110:begin anodes =4'b1101; char = start_bit+2'b10; end
            4'b0111:begin anodes =4'b1111; char = start_bit+2'b10; end
            4'b1000:begin anodes =4'b1111; char = start_bit+2'b10; end
            4'b1001:begin anodes =4'b1111; char = start_bit+2'b01; end
            4'b1010:begin anodes =4'b1011; char = start_bit+2'b01; end
            4'b1011:begin anodes =4'b1111; char = start_bit+2'b01; end
            4'b1100:begin anodes =4'b1111; char = start_bit+2'b01; end
            4'b1101:begin anodes =4'b1111; char = start_bit;       end
            4'b1110:begin anodes =4'b0111; char = start_bit;       end
            4'b1111:begin anodes =4'b1111; char = start_bit;       end
        endcase
    end
endmodule
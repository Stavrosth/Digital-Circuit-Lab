module Timer(clk_out, reset_use, pointer, big_counter);
    input clk_out, reset_use;
    output reg [3:0] pointer=4'b0;
    output reg [8:0] big_counter=23'h3FFFFF;
    reg [3:0] message [15:0]; //stores the message
    reg [3:0] count=4'b0001;

    //memory instantiation
    always @(posedge reset_use) begin
        message[0] =  4'b0000;
        message[1] =  4'b0001;
        message[2] =  4'b0010;
        message[3] =  4'b0011;
        message[4] =  4'b0100;
        message[5] =  4'b0101;
        message[6] =  4'b0110;
        message[7] =  4'b0111;
        message[8] =  4'b1000;
        message[9] =  4'b1001;
        message[10] = 4'b1010;
        message[11] = 4'b1011;
        message[12] = 4'b1100;
        message[13] = 4'b1101;
        message[14] = 4'b1110;
        message[15] = 4'b1111;
    end

    //moves pointer steadily after 1.6 seconds
    always @(posedge clk_out or posedge reset_use) begin        
        if  (reset_use == 1'b1) begin
            big_counter <= 23'h3FFFFF;
            pointer <= message[0];
           count <= 4'b0001;
        end else begin
            big_counter  <= big_counter - 1;
        
            if (big_counter <= 23'b0) begin
                pointer <= message[count];
                count <= count + 1'b1;
            end
        end
    end
endmodule
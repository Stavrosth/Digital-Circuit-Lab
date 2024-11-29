/*Changes the pointer value to the next when the correct requirements are met*/
module PointerAdder(clk_out, reset_use, button_real, pointer);
    input clk_out, reset_use, button_real;
    output reg [3:0] pointer=4'b0;
    reg [3:0] message [15:0]; //memory
    reg [3:0] count=4'b0000;
    reg second_counter=1'b0;

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

    //makes the pointer move 4 stages after the button is 1 so we have a smooth transition
    always @(posedge clk_out or posedge reset_use) begin
        if ( reset_use == 1'b1) begin //case when all the values are seted to their original values
            pointer <=  message[0];
            second_counter <= 1'b0;
            count <= 4'b0001;
        end else begin
            if ( button_real == 1'b1 && second_counter == 1'b0) begin //moves pointer to the next value of the message
                pointer <= message[count];
                count <= count + 1'b1;
                second_counter <= 1'b1; 
            end else if ( button_real == 1'b0 ) //makes sure the pointer is not increasing repeatdly
                second_counter <= 1'b0;
        end
    end

endmodule
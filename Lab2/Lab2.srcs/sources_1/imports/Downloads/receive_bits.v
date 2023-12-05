module receive_bits(clk_out, clk_out_slow, reset, Rx_EN, RxD, Rx_DATA, Rx_FERROR, Rx_PERROR, Rx_VALID, current_state, next_state, counter_begin, {temp7, temp6, temp5, temp4, temp3, temp2, temp1, temp0}, select_begin, starter);
    input clk_out, clk_out_slow, reset, Rx_EN, RxD;
    output reg Rx_FERROR, Rx_PERROR, Rx_VALID;
    output reg [7:0] Rx_DATA;

    output reg [4:0] counter_begin;
    output reg [3:0] current_state, next_state;
    output reg select_begin, starter;
   // output reg [7:0] temp;
    output reg temp0, temp1, temp2, temp3, temp4, temp5, temp6, temp7;

    always @(current_state or select_begin) begin
        next_state = current_state;
        Rx_VALID = 1'b0;
        Rx_FERROR = 1'b0;
        case (current_state)
            4'd1: begin
                //temp[0] = RxD;
                temp0 = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd2;
                else 
                    next_state = 4'd0;
            end
            4'd2: begin
                //temp[1] = RxD;
                temp1 = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd3;
                else 
                    next_state = 4'd0;
            end
            4'd3: begin
                //temp[2] = RxD;
                temp2 = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd4;
                else 
                    next_state = 4'd0;
            end
            4'd4: begin
                //temp[3] = RxD;
                temp3 = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd5;
                else 
                    next_state = 4'd0;
            end
            4'd5: begin
                //temp[4] = RxD;
                temp4 = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd6;
                else 
                    next_state = 4'd0;
            end
            4'd6: begin
                //temp[5] = RxD;
                temp5 = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd7;
                else 
                    next_state = 4'd0;
            end
            4'd7: begin
                //temp[6] = RxD;
                temp6 = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd8;
                else 
                    next_state = 4'd0;
            end
            4'd8: begin
                //temp[7] = RxD;
                temp7 = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd9;
                else 
                    next_state = 4'd0;
            end
            4'd9: begin
                //Rx_PERROR = (RxD == temp[0] ^ temp[1] ^ temp[2] ^ temp[3] ^ temp[4] ^ temp[5] ^ temp[6] ^ temp[7]) ? 1'b0 : 1'b1;
                Rx_PERROR = (RxD == temp0 ^ temp1 ^ temp2 ^ temp3 ^ temp4 ^ temp5 ^ temp6 ^ temp7) ? 1'b0 : 1'b1;
                if (select_begin == 1'b1)
                    next_state = 4'd10;
                else 
                    next_state = 4'd0;
            end
            4'd10: begin
                if ( RxD == 1'b0)
                    Rx_FERROR = 1'b1;
                else if (Rx_PERROR == 1'b0) begin
                    Rx_DATA = {temp7, temp6, temp5, temp4, temp3, temp2, temp1, temp0};
                    Rx_VALID = 1'b1;
                end else
                    Rx_PERROR = 1'b0;

                next_state = 4'd0;
            end
            default:begin
               // temp = 8'b11111111;
                Rx_FERROR = 1'b0;
                Rx_PERROR = 1'b0;
                Rx_VALID  = 1'b0;
            end
        endcase
    end

    //moves to the next state when feasible
    always @(posedge clk_out_slow) begin
        if (reset == 1'b1 || Rx_EN == 1'b0 || select_begin == 1'b0) begin
            current_state <= 4'd1;
        end else
            current_state <= next_state;
    end

    //checks the RXD value 16 times slower than the transmitter sends
    always @(posedge clk_out) begin
        if ( reset == 1'b1) begin
            counter_begin <= 5'b0;
            select_begin <= 1'b0;
            starter <= 1'b0;
        end else if ( RxD == 1'b0 )//|| starter == 1'b1)
            counter_begin <= counter_begin + 1'b1; //enables the counter to increase for 24 times after start bit is detected

        if ( counter_begin == 5'd23 || next_state > 4'd0)
            select_begin <= 1'b1; //allows the transmitter to receive data
        else 
            select_begin <= 1'b0;

        if ( counter_begin > 5'd23)
            counter_begin <= 5'd0;
        else if ( counter_begin > 5'd0)
            counter_begin <= counter_begin + 1'b1;
        
    end
endmodule
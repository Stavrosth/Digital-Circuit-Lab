module receive_bits(clk_out, clk_out_quick, reset, Rx_EN, RxD, Rx_DATA, Rx_FERROR, Rx_PERROR, Rx_VALID, current_state, next_state, counter_begin, temp, select_begin, starter);
    input clk_out, clk_out_quick, reset, Rx_EN, RxD;
    output reg Rx_FERROR, Rx_PERROR, Rx_VALID;
    output reg [7:0] Rx_DATA;

    output reg [4:0] counter_begin;
    output reg [3:0] current_state, next_state;
    output reg select_begin, starter;
    output reg [7:0] temp;

    always @(current_state) begin
        next_state = current_state;
        Rx_VALID = 1'b0;
        Rx_FERROR = 1'b0;
        case (current_state)
            4'd1: begin
                temp[0] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd2;
                else 
                    next_state = 4'd0;
            end
            4'd2: begin
                temp[1] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd3;
                else 
                    next_state = 4'd0;
            end
            4'd3: begin
                temp[2] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd4;
                else 
                    next_state = 4'd0;
            end
            4'd4: begin
                temp[3] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd5;
                else 
                    next_state = 4'd0;
            end
            4'd5: begin
                temp[4] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd6;
                else 
                    next_state = 4'd0;
            end
            4'd6: begin
                temp[5] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd7;
                else 
                    next_state = 4'd0;
            end
            4'd7: begin
                temp[6] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd8;
                else 
                    next_state = 4'd0;
            end
            4'd8: begin
                temp[7] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd9;
                else 
                    next_state = 4'd0;
            end
            4'd9: begin
                Rx_PERROR = (RxD == temp[0] ^ temp[1] ^ temp[2] ^ temp[3] ^ temp[4] ^ temp[5] ^ temp[6] ^ temp[7]) ? 1'b0 : 1'b1;
                if (select_begin == 1'b1)
                    next_state = 4'd10;
                else 
                    next_state = 4'd0;
            end
            4'd10: begin
                if ( RxD == 1'b0)
                    Rx_FERROR = 1'b1;
                else if (Rx_PERROR == 1'b0) begin
                    Rx_DATA = temp;
                    Rx_VALID = 1'b1;
                end else
                    Rx_PERROR = 1'b0;

                next_state = 4'd0;
            end
            default:begin
                temp = 8'b11111111;
                Rx_FERROR = 1'b0;
                Rx_PERROR = 1'b0;
                Rx_VALID  = 1'b0;
            end
        endcase
    end

    //moves to the next state when feasible
    always @(posedge clk_out) begin
        if (reset == 1'b1 || Rx_EN == 1'b0 || select_begin == 1'b0) begin
            current_state <= 4'd1;
        end else
            current_state <= next_state;
    end

    //checks the RXD value 16 times quicker than the transmitter sends
    always @(posedge clk_out_quick) begin
        if ( reset == 1'b1) begin
            counter_begin <= 4'b0;
            select_begin <= 1'b0;
            starter <= 1'b0;
        end else if ( RxD == 1'b0 || starter == 1'b1)
            counter_begin <= counter_begin + 1'b1; //enables the counter to increase for 24 times after start bit is detected

        if ( counter_begin == 5'd23 || next_state > 4'd0)
            select_begin <= 1'b1; //allows the transmitter to receive data
        else 
            select_begin <= 1'b0;

        if ( counter_begin > 5'd0 && counter_begin < 5'd24)
            starter <= 1'b1; //keeps starter one so the receiver can receive data
        else 
            starter <= 1'b0; //resets the starter
            counter_begin <= 5'd0; //resets the counter
    end

endmodule
module receive_bits(clk_out, clk_out_slow, reset, Rx_EN, RxD, Rx_DATA, Rx_FERROR, Rx_PERROR, Rx_VALID);//, current_state, next_state, counter_begin, temp, select_begin, starter);
    input clk_out, clk_out_slow, reset, Rx_EN, RxD;
    output reg Rx_FERROR, Rx_PERROR, Rx_VALID;
    output reg [7:0] Rx_DATA;

    /* Test Parameters 
    output reg [4:0] counter_begin;
    output reg [3:0] current_state, next_state;
    output reg select_begin, starter;
    output reg [7:0] temp;*/

    //combinational always
    always @(current_state or select_begin) begin
        next_state = current_state; //declares the value for some variables so 
        Rx_VALID = 1'b0;            //we dont have to change it on every state
        Rx_FERROR = 1'b0;
        case (current_state)
            4'd0: begin
                Rx_PERROR = 1'b0;
                Rx_DATA = 8'bx;//initiases the ouput data
                if (select_begin == 1'b1) //allows the fsm to move to the next state or not
                    next_state = 4'd1;
                else 
                    next_state = 4'd0;
            end
            4'd1: begin
                temp[7] = RxD;   //assigns the data to a temporary
                Rx_PERROR = 1'b0;//variable so it can sesnd it to the system in parallel
                if (select_begin == 1'b1) //allows the fsm to move to the next state or not
                    next_state = 4'd2;
                else 
                    next_state = 4'd0;
            end
            4'd2: begin
                temp[6] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd3;
                else 
                    next_state = 4'd0;
            end
            4'd3: begin
                temp[5] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd4;
                else 
                    next_state = 4'd0;
            end
            4'd4: begin
                temp[4] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd5;
                else 
                    next_state = 4'd0;
            end
            4'd5: begin
                temp[3] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd6;
                else 
                    next_state = 4'd0;
            end
            4'd6: begin
                temp[2] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd7;
                else 
                    next_state = 4'd0;
            end
            4'd7: begin
                temp[1] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd8;
                else 
                    next_state = 4'd0;
            end
            4'd8: begin
                temp[0] = RxD;
                Rx_PERROR = 1'b0;
                if (select_begin == 1'b1)
                    next_state = 4'd9;
                else 
                    next_state = 4'd0;
            end
            4'd9: begin //checks if the parity bit is correct
                Rx_PERROR = (RxD == temp[0] ^ temp[1] ^ temp[2] ^ temp[3] ^ temp[4] ^ temp[5] ^ temp[6] ^ temp[7]) ? 1'b0 : 1'b1;
                if (select_begin == 1'b1)
                    next_state = 4'd10;
                else 
                    next_state = 4'd0;
            end
            4'd10: begin
                if ( RxD == 1'b0)
                    Rx_FERROR = 1'b1; //sends the appropriate message to the system depending on the error if it exists
                else if (Rx_PERROR == 1'b0) begin
                    Rx_DATA = temp;   //sends the serialy transmited data to the system in parallel
                    Rx_VALID = 1'b1;
                end
                next_state = 4'd0;    //makes the program ready to receive new messages
            end
            default:begin //in case where the current state has a wrong value
                temp = 8'b11111111;
                Rx_FERROR = 1'b0;
                Rx_PERROR = 1'b0;
                Rx_VALID  = 1'b0;
            end
        endcase
    end

    //moves to the next state when feasible
    always @(posedge clk_out_slow) begin
        if (reset == 1'b1 || Rx_EN == 1'b0 || select_begin == 1'b0) begin
            current_state <= 4'd0;
            temp <= 8'b11111111;
        end else
            current_state <= next_state;
    end

    //checks the RXD value 16 times slower than the transmitter sends
    always @(posedge clk_out) begin
        if ( reset == 1'b1) begin //resets all the necessary values
            counter_begin <= 5'b0;
            select_begin <= 1'b0;
            starter <= 1'b0;
        end else if ( RxD == 1'b0 )
            counter_begin <= counter_begin + 1'b1; //enables the counter to increase for 24 times after start bit is detected

        if ( counter_begin == 5'd23 || next_state > 4'd0) begin
            select_begin <= 1'b1; //allows the fsm to move to the next state
        end else 
            select_begin <= 1'b0;

        if ( counter_begin > 5'd23 || next_state == 4'd10)
            counter_begin <= 5'd0;
        else if ( counter_begin > 5'd0)
            counter_begin <= counter_begin + 1'b1;
    end
endmodule
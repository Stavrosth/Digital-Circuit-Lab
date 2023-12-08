module receive_bits(clk_out, reset, Rx_EN, RxD, Rx_DATA, Rx_FERROR, Rx_PERROR, Rx_VALID, current_state, next_state, counter, temp, select);
    input clk_out, reset, Rx_EN, RxD;
    output reg Rx_FERROR, Rx_PERROR, Rx_VALID;
    output reg [7:0] Rx_DATA;

    /* Test Parameters */
    output reg [4:0] counter;
    output reg [3:0] current_state, next_state;
    output reg [1:0] select;
    output reg [7:0] temp;
    reg starter;

    //combinational always
    always @(current_state or select) begin
        next_state = current_state; //declares the value for some variables so 
        Rx_VALID = 1'b0;            //we dont have to change it on every state
        Rx_FERROR = 1'b0;
        case (current_state)
            4'd0: begin
                Rx_PERROR = 1'b0;
                Rx_DATA = 8'bx;//initiases the ouput data
                if (select == 2'b01) //allows the fsm to move to the next state or not
                    next_state = 4'd1;
                else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd1: begin
                temp[0] = RxD;   //assigns the data to a temporary
                Rx_PERROR = 1'b0;//variable so it can sesnd it to the system in parallel
                if (select == 2'b01) //allows the fsm to move to the next state or not
                    next_state = 4'd2;
                else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd2: begin
                temp[1] = RxD;
                Rx_PERROR = 1'b0;
                if (select == 2'b01)
                    next_state = 4'd3;
                else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd3: begin
                temp[2] = RxD;
                Rx_PERROR = 1'b0;
                if (select == 2'b01)
                    next_state = 4'd4;
                else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd4: begin
                temp[3] = RxD;
                Rx_PERROR = 1'b0;
                if (select == 2'b01)
                    next_state = 4'd5;
                else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd5: begin
                temp[4] = RxD;
                Rx_PERROR = 1'b0;
                if (select == 2'b01)
                    next_state = 4'd6;
                else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd6: begin
                temp[5] = RxD;
                Rx_PERROR = 1'b0;
                if (select == 2'b01)
                    next_state = 4'd7;
                else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd7: begin
                temp[6] = RxD;
                Rx_PERROR = 1'b0;
                if (select == 2'b01)
                    next_state = 4'd8;
                else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd8: begin
                temp[7] = RxD;
                Rx_PERROR = 1'b0;
                if (select == 2'b01)
                    next_state = 4'd9;
                else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd9: begin //checks if the parity bit is correct
                Rx_PERROR = (RxD == temp[0] ^ temp[1] ^ temp[2] ^ temp[3] ^ temp[4] ^ temp[5] ^ temp[6] ^ temp[7]) ? 1'b0 : 1'b1;
                if (select == 2'b01)
                    next_state = 4'd10;
                else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
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
    always @(posedge clk_out) begin
        if (reset == 1'b1 || Rx_EN == 1'b0) begin
            current_state <= 4'd0;
            temp <= 8'b11111111;
        end else
            current_state <= next_state;
    end

    //checks the RXD value 16 times slower than the transmitter sends
    always @(posedge clk_out) begin
        if ( reset == 1'b1 || current_state == 4'd10) begin //resets all the necessary values
            counter <= 5'b0;
            select <= 2'b00;
            starter <= 1'b0;
        end else begin 
            if ( RxD == 1'b0)
                starter <= 1'b1;//enables the counter to increase for 24 times after start bit is detected
            
            if (select == 2'b01 && current_state > 4'b0) begin
                select <= 2'b10;
                counter <= 5'd0;
            end else if ( counter == 5'd23 )
                select <= 2'b01;
            else if ( starter == 1'b1)
                counter <= counter + 1'b1;
        end
/*
        if ( counter == 5'd23 || next_state > 4'd0) begin
            select <= 1'b1; //allows the fsm to move to the next state
        end else 
            select <= 1'b0;

        if ( counter > 5'd23 || next_state == 4'd10)
            counter <= 5'd0;
        else if ( counter > 5'd0)
            counter <= counter + 1'b1;
*/
    end
endmodule
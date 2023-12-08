module receive_bits(clk_out, reset, Rx_EN, RxD, Rx_DATA, Rx_FERROR, Rx_PERROR, Rx_VALID);//, current_state, next_state, counter, temp, select, starter);
    input clk_out, reset, Rx_EN, RxD;
    output reg Rx_FERROR, Rx_PERROR, Rx_VALID;
    output reg [7:0] Rx_DATA;

    /* Test Parameters 
    output reg [3:0] counter;
    output reg [3:0] current_state, next_state;
    output reg [1:0] select;
    output reg [7:0] temp;
    output reg starter;
    reg [2:0] second_counter;*/

    //combinational always
    always @(current_state or select) begin
        next_state = current_state; //declares the value for some variables so 
        Rx_VALID = 1'b0;            //we dont have to change it on every state
        Rx_FERROR = 1'b0;
        case (current_state)
            4'd0: begin
                Rx_PERROR = 1'b0;
                Rx_DATA = 8'bx;//initiases the ouput data to x because it is easier to detect mistakes during debugging
                if (select == 2'b01) //allows the fsm to move to the next state or not
                    next_state = 4'd1;
                else 
                    next_state = current_state;
            end
            4'd1: begin
                if (select == 2'b01) begin //allows the fsm to move to the next state or not
                    next_state = 4'd2;
                    temp[0] = RxD;   //assigns the data to a temporary variable to send it later all together in parallel
                    Rx_PERROR = 1'b0;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd2: begin
                if (select == 2'b01) begin
                    next_state = 4'd3;
                    temp[1] = RxD;
                    Rx_PERROR = 1'b0;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd3: begin
                if (select == 2'b01) begin
                    next_state = 4'd4;
                    temp[2] = RxD;
                    Rx_PERROR = 1'b0;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd4: begin
                if (select == 2'b01) begin
                    next_state = 4'd5;
                    temp[3] = RxD;
                    Rx_PERROR = 1'b0;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd5: begin
                if (select == 2'b01) begin
                    next_state = 4'd6;
                    temp[4] = RxD;
                    Rx_PERROR = 1'b0;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd6: begin
                if (select == 2'b01) begin
                    next_state = 4'd7;
                    temp[5] = RxD;
                    Rx_PERROR = 1'b0;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd7: begin
                if (select == 2'b01) begin
                    next_state = 4'd8;
                    temp[6] = RxD;
                    Rx_PERROR = 1'b0;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd8: begin
                if (select == 2'b01) begin
                    next_state = 4'd9;
                    temp[7] = RxD;
                    Rx_PERROR = 1'b0;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd9: begin //checks if the parity bit is correct and Rx_Perror is set accordingly
                if (select == 2'b01) begin
                    next_state = 4'd10;
                    Rx_PERROR = (RxD == temp[0] ^ temp[1] ^ temp[2] ^ temp[3] ^ temp[4] ^ temp[5] ^ temp[6] ^ temp[7]) ? 1'b0 : 1'b1;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd10: begin
                if (select == 2'b01 || select == 2'b00) begin
                    next_state = 4'd0;    //makes the program ready to receive new messages
                    if ( RxD == 1'b0)
                        Rx_FERROR = 1'b1; //sends the appropriate message to the system if the stop bit is not 1
                    else if (Rx_PERROR == 1'b0) begin
                        Rx_DATA = temp;   //sends the serialy transmited data to the system in parallel
                        Rx_VALID = 1'b1;  //sends Rx_Valid to 1 for one cycle to indicate that data is valid with no errors
                    end
                end else
                    next_state = current_state;
            end
            default:begin //in case where the current state has a wrong value
                temp = 8'b11111111;
                Rx_FERROR = 1'b0;
                Rx_PERROR = 1'b0;
                Rx_VALID  = 1'b0;
            end
        endcase
    end

    //FSM sequentional block
    always @(posedge clk_out) begin
        if (reset == 1'b1 || Rx_EN == 1'b0) begin
            current_state <= 4'd0;
            temp <= 8'b11111111;
        end else
            current_state <= next_state; //moves the FSM to the next state
    end

    //checks the RXD value 16 times faster than the transmitter sends
    always @(posedge clk_out) begin 
        /*resets all the necessary values when reset is one
          or when the system needs to be ready to receive new signals*/
        if ( reset == 1'b1 || ( next_state == 4'b0 && select == 2'b01)) begin 
            counter <= 4'b0;
            second_counter <= 3'b0;
            select <= 2'b00;
            starter <= 1'b0;
        end else begin 
            if ( RxD == 1'b0 && starter == 1'b0) begin    
                second_counter <= second_counter + 1'b1;
                if ( second_counter  == 3'b111)
                    starter <= 1'b1;//enables the counter to increase for 24 times after start bit is detected
            end

            //enables the receiver to receive data every 16 cycles because the clock of the transmiter is 16 times slower
            if (select == 2'b01 && current_state > 4'b0) begin
                select <= 2'b10;
                counter <= 4'd0;
            end else if ( counter == 4'd14 ) begin
                select <= 2'b01;
                counter <= 4'd0;
            end else if (starter == 1'b1) begin
                counter <= counter + 1'b1;
                second_counter <= 3'b0;
            end
        end
    end
endmodule
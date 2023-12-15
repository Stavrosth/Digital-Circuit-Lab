module receive_bits(clk, clk_out, reset, Rx_EN, RxD, Rx_DATA, Rx_FERROR, Rx_PERROR, Rx_VALID);//, current_state, next_state, counter, temp, select, starter);
    input clk, clk_out, reset, Rx_EN, RxD;
    output reg Rx_FERROR, Rx_PERROR, Rx_VALID;
    output reg [7:0] Rx_DATA;

    /* Test Parameters */
    reg [3:0] current_state, next_state, counter, save_data;
    reg [1:0] select;
    reg [7:0] temp;
    reg starter;
    reg [2:0] second_counter;

    //combinational always
    always @(current_state or select or RxD or temp) begin
        next_state = current_state; //declares the value for some variables so 
        Rx_VALID = 1'b0;            //we dont have to change it on every state
        Rx_FERROR = 1'b0;
        Rx_PERROR = 1'b0;
        Rx_DATA = 8'bx;//initiases the ouput data to x because it is easier to detect mistakes during debugging
        save_data = 4'd15;
        case (current_state)
            4'd0: begin
                if (select == 2'b01) begin //allows the fsm to move to the next state or not
                    next_state = 4'd1;
                end else
                    next_state = current_state;
            end
            4'd1: begin
                if (select == 2'b01) begin //allows the fsm to move to the next state or not
                    next_state = 4'd2;
                    save_data = 4'd0;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd2: begin
                if (select == 2'b01) begin
                    next_state = 4'd3;
                    save_data = 4'd1;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd3: begin
                if (select == 2'b01) begin
                    next_state = 4'd4;
                    save_data = 4'd2;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd4: begin
                if (select == 2'b01) begin
                    next_state = 4'd5;
                    save_data = 4'd3;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd5: begin
                if (select == 2'b01) begin
                    next_state = 4'd6;
                    save_data = 4'd4;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd6: begin
                if (select == 2'b01) begin
                    next_state = 4'd7;
                    save_data = 4'd5;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd7: begin
                if (select == 2'b01) begin
                    next_state = 4'd8;
                    save_data = 4'd6;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd8: begin
                if (select == 2'b01) begin
                    next_state = 4'd9;
                    save_data = 4'd7;
                end else if ( select == 2'b00 )
                    next_state = 4'd0;
                else 
                    next_state = current_state;
            end
            4'd9: begin //checks if the parity bit is correct and Rx_Perror is set accordingly
                if (select == 2'b01) begin
                    if ( (RxD != temp[0] ^ temp[1] ^ temp[2] ^ temp[3] ^ temp[4] ^ temp[5] ^ temp[6] ^ temp[7]) ) begin
                        next_state = 4'd0;
                        Rx_PERROR = 1'b1;
                    end else 
                        next_state = 4'd10;
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
                    else begin
                        Rx_DATA = temp;   //sends the serialy transmited data to the system in parallel
                        Rx_VALID = 1'b1;  //sends Rx_Valid to 1 for one cycle to indicate that data is valid with no errors
                    end
                end else
                    next_state = current_state;
            end
            default:begin //in case where the current state has a wrong value
                save_data = 4'b1111;
                Rx_FERROR = 1'b0;
                Rx_PERROR = 1'b0;
                Rx_VALID  = 1'b0;
            end
        endcase
    end

    //FSM sequentional block
    always @(posedge clk or posedge reset) begin
        if (reset == 1'b1)
            current_state <= 4'b0;
        else begin
            if ( clk_out == 1'b1) begin
                if ( Rx_EN == 1'b0)
                    current_state <= 4'b0;
                else begin
                    current_state <= next_state; //moves the FSM to the next state
                    if ( save_data < 4'd8)
                        temp[save_data] <= RxD;
                end
            end
        end
    end

    //checks the RXD value 16 times faster than the transmitter sends
    always @(posedge clk) begin 
        /*resets all the necessary values when reset is one
          or when the system needs to be ready to receive new signals*/
        if (reset == 1'b1) begin
            counter <= 4'b0;
            second_counter <= 3'b0;
            select <= 2'b00;
            starter <= 1'b0;
        end else begin
            if ( clk_out == 1'b1) begin
                if ( next_state == 4'b0 && select == 2'b01) begin 
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
                        counter <= 4'b0;
                    end else if ( counter == 4'd14 ) begin
                        select <= 2'b01;
                        counter <= 4'b0;
                    end else if (starter == 1'b1) begin
                        counter <= counter + 1'b1;
                        second_counter <= 3'b0;
                    end
                end
            end
        end
    end
endmodule
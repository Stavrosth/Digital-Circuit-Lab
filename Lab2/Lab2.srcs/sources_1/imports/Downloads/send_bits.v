module send_bits(clk_out, reset, Tx_WR, Tx_EN, Tx_DATA, Tx_BUSY, TxD);//, current_state, next_state, select, counter);
    input clk_out, reset, Tx_WR, Tx_EN;
    input [7:0] Tx_DATA;
    output reg TxD, Tx_BUSY;
    reg [3:0] current_state, next_state, counter;
    reg select;

    //transmits the data in serial mode
    always @(current_state or counter) begin
        //next_state = current_state;
        TxD = 1'b1;
        Tx_BUSY = 1'b0;
        case (current_state)
            4'd0:begin  
                if (select == 1'b1) //allows the fsm to move to the next state
                    next_state = 4'd1;
                else
                    next_state = 4'd0;
            end
            4'd1:begin  
                TxD = 1'b0; //start bit
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd2;
                else
                    next_state = 4'd0;
            end 
            4'd2:begin  
                TxD = Tx_DATA[0]; //stars sending the data
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd3;
                else
                    next_state = 4'd0;
            end
            4'd3:begin 
                TxD = Tx_DATA[1];
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd4;
                else
                    next_state = 4'd0;
            end
            4'd4:begin  
                TxD = Tx_DATA[2];
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd5;
                else
                    next_state = 4'd0;
            end
            4'd5:begin  
                TxD = Tx_DATA[3]; 
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd6;
                else
                    next_state = 4'd0;
            end               
            4'd6:begin  
                TxD = Tx_DATA[4]; 
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd7;
                else
                    next_state = 4'd0;
            end
            4'd7:begin  
                TxD = Tx_DATA[5]; 
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd8;
                else
                    next_state = 4'd0;
            end    
            4'd8:begin  
                TxD = Tx_DATA[6]; 
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd9;
                else
                    next_state = 4'd0;
            end    
            4'd9:begin  
                TxD = Tx_DATA[7]; 
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd10;
                else
                    next_state = 4'd0;
            end    
            4'd10:begin //calculates and sends the parity bit
                TxD = Tx_DATA[0] ^ Tx_DATA[1] ^ Tx_DATA[2] ^ Tx_DATA[3] ^ Tx_DATA[4] ^ Tx_DATA[5] ^ Tx_DATA[6] ^ Tx_DATA[7]; 
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd11;
                else
                    next_state = 4'd0;  
            end     
            4'd11:begin 
                next_state = 4'd0; //stop bit
                Tx_BUSY = 1'b0;
            end
            default:begin    
                TxD = 1'b1; 
                Tx_BUSY = 1'b0; 
                next_state = 4'd0;
            end
        endcase
    end

    //sequential always of the FSM
    always @(posedge clk_out) begin
        if ( reset == 1'b1 || Tx_EN == 1'b0) begin //asynchronoys reset
            current_state <= 4'd0;
            counter <= 4'd0;
            select <= 1'b0;
        end else
            current_state <= next_state; //moves the fsm to the next state
    end

    /*        Always Block that is NOT included in the fsm
      controls the select signal and enables it for 11 cycles when a new 
      signal has arrived because Tx_Wr is only active for one cycle*/
    always @(posedge clk_out) begin
        if (reset == 1'b1) begin
            counter <= 4'd0;
            select <= 1'b0;
        end else if (Tx_WR == 1'b1 || reset == 1'b0) begin
            counter <= counter + 1'b1;
            select <= 1'b1;
        end else if ( counter > 4'd0 && counter < 4'd12) begin
            counter <= counter + 1'b1;
            select <= 1'b1;
        end
    end
endmodule
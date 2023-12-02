module send_bits(clk_out, reset, Tx_WR, Tx_EN, Tx_DATA, Tx_BUSY, TxD, sum_inputs);//, current_state, next_state, select);
    input clk_out, reset, Tx_WR, Tx_EN;
    input [3:0] sum_inputs;
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
                if (select == 1'b1) 
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
                TxD = Tx_DATA[0];
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
            4'd10:begin 
                TxD = sum_inputs[0]; //parity bit
                Tx_BUSY = 1'b1;
                if (select == 1'b1)
                    next_state = 4'd11;
                else
                    next_state = 4'd0;  
            end     
            4'd11: next_state = 4'd0; //stop bit
            default:begin   
                TxD = 1'b1; 
                Tx_BUSY = 1'b0; 
                next_state = 4'd0;
            end//xcase with worng counter value
        endcase
    end

    always @(posedge clk_out) begin
        if ( reset == 1'b1 || Tx_EN == 1'b0) begin //asynchronoys reset
            current_state <= 4'd0;
            counter <= 4'd0;
            select <= 1'b0;
        end else
            current_state <= next_state;

        //controls the select signal and enables it for 11 cycles when a new signal has arrived
        if (Tx_WR == 1'b1) begin
            counter <= counter + 1'b1;
            select <= 1'b0;
        end else if ( counter > 4'd0 && counter < 4'd12) begin
            counter <= counter + 1'b1;
            select <= 1'b1;
        end else begin
            counter <= 4'd0;
            select <= 1'b0;
        end 
    end
endmodule
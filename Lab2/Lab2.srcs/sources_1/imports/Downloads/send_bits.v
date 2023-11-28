module send_bits(clk_out, Tx_DATA, counter, set_clk_counter, Tx_BUSY, TxD, sum_inputs);
    input clk_out;
    input [7:0] Tx_DATA;
    input [3:0] counter, set_clk_counter, sum_inputs;
    output reg TxD, Tx_BUSY;
    
    //sends the bits in serial mode 
    always @(posedge clk_out) begin
        if ( Tx_BUSY == 1'b1) begin
            set_clk_counter <= set_clk_counter + 1'b1;
            
            if (set_clk_counter == 4'b0)
                counter <= counter + 1'b1;
        
            case (counter)
                4'd0: TxD <= 1'b0; //start bit
                4'd1: TxD <= Tx_DATA[0];
                4'd2: TxD <= Tx_DATA[1];
                4'd3: TxD <= Tx_DATA[2];
                4'd4: TxD <= Tx_DATA[3];                
                4'd5: TxD <= Tx_DATA[4];
                4'd6: TxD <= Tx_DATA[5];
                4'd7: TxD <= Tx_DATA[6];
                4'd8: TxD <= Tx_DATA[7];
                4'd9: TxD <= sum_inputs[0]; //parity bit
                4'd10: begin TxD <= 1'b1; Tx_BUSY <= 1'b0; end //stop bit and sets busy to 0
                default: TxD = 1'b1; //makes sure that the output is zero when the transmitter is idle
            endcase
        end
    end
endmodule
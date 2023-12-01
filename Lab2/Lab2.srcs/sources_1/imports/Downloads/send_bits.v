module send_bits(clk_out, reset, Tx_WR, Tx_EN, Tx_DATA, counter, set_clk_counter, Tx_BUSY, TxD, sum_inputs, busy_select);
    input clk_out, reset, Tx_WR, Tx_EN;
    input [3:0] sum_inputs;
    input [7:0] Tx_DATA;
    output reg TxD, Tx_BUSY;
    reg [3:0] current_state, next_state; //t_clk_counter;
    reg busy_select;

    //sends the bits in serial mode 
    always @(counter) begin
        next_state = current_state;
        TxD = 1'b1;
        case (current_state)
            4'd0: if (select) next_state = 4'd1;
            4'd1:begin  TxD <= 1'b0; 
                        Tx_BUSY <= 1'b1;
                        next_state = 4'd2;
            end //start bit
            4'd2:begin  TxD <= Tx_DATA[0];
                        counter <= 4'd2;
            end
            4'd3:begin 
                        TxD <= Tx_DATA[1];
                        counter <= 4'd3;
            end
            4'd4:begin  TxD <= Tx_DATA[2];
                        counter <= 4'd4;
            end
            4'd5: TxD <= Tx_DATA[3];                
            4'd6: TxD <= Tx_DATA[4];
            4'd7: TxD <= Tx_DATA[5];
            4'd8: TxD <= Tx_DATA[6];
            4'd9: TxD <= Tx_DATA[7];
            4'd10: TxD <= sum_inputs[0]; //parity bit
            4'd11: begin TxD <= 1'b1; Tx_BUSY <= 1'b0; end //stop bit and sets busy to 0
            default:begin TxD = 1'b1; Tx_BUSY <= 1'b0; end//makes sure that the output is zero when the transmitter is idle
        endcase
    end

    always @(posedge clk_out) begin
        if ( reset == 1'b1) begin
            current_stat
        end
    end
/*
    //module that determines if the transmitter can send data or not
    always @(posedge clk_out or posedge reset) begin
        if ( reset == 1'b1) begin
            counter <= 4'b1111;
            set_clk_counter <= 4'b0;
            busy_select <= 1'b0;
            second_counter <= 4'b1011;
        end else if (Tx_EN == 1'b0 || (second_counter >= 4'b1011 && Tx_WR == 1'b0) ) begin
            counter <= 4'b1111;
            set_clk_counter <= 4'b0;
            busy_select <= 1'b0;
            second_counter <= 4'b1011;
        end else begin
            busy_select <= 1'b1;
            second_counter <= second_counter - 1'b1;
        end

        // if ( Tx_WR == 1'b1)
         //   second_counter <= 4'b1011;
    end*/
endmodule
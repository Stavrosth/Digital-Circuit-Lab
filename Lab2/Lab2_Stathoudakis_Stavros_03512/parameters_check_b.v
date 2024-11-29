module parameter_checkB(clk_out, reset, Tx_EN, busy_select, Tx_WR, counter, set_clk_counter, busy_select, second_counter);
    input clk_out, reset, Tx_WR, Tx_EN;
    output reg [3:0] counter, set_clk_counter;
    output reg busy_select;
    output reg [3:0] second_counter;

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
    end
endmodule
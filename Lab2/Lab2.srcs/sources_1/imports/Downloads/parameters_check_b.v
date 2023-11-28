module parameter_checkB(clk_out, reset, Tx_EN, Tx_BUSY, Tx_WR, counter, set_clk_counter);
    input clk_out, reset, Tx_WR, Tx_EN;
    output reg [3:0] counter, set_clk_counter;
    output Tx_BUSY;

    //module that determines if the transmitter can send data or not
    always @(posedge clk_out or posedge reset) begin
        if ( reset == 1'b0 || Tx_BUSY == 1'b0 || Tx_WR == 1'b1) begin
            counter <= 4'b1111;
            set_clk_counter <= 4'b1111;
        end else if (Tx_EN == 1'b1)
            Tx_BUSY <= 1'b1;
    end
endmodule

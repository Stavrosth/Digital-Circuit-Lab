module uart_transmitter(reset, clk, Tx_DATA, baud_select, Tx_WR, Tx_EN, TxD, Tx_BUSY, clk_out_use, current_state_use, next_state_use, select, counter);
    input reset, clk, Tx_EN, Tx_WR;
    input [7:0] Tx_DATA;
    input [2:0] baud_select;
    output TxD, Tx_BUSY;
    wire clk_out, clk_out_slow;
    /*TEST PARAMETERS*/
    output clk_out_use; assign clk_out_use = clk_out_slow;
    output [3:0] current_state_use, next_state_use, counter;
    output select;

    //initialises the baud rate
    baud_controller baud_controller_tx_inst(.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(clk_out));

    //makes the clock 16 times slower
    clk_multiplier multiply(.clk_out(clk_out), .clk_out_slow(clk_out_slow));

    //transmits the bits in serial mode
    send_bits transmit(.clk_out(clk_out_slow), .reset(reset), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .Tx_DATA(Tx_DATA), .Tx_BUSY(Tx_BUSY), .TxD(TxD), .current_state(current_state_use), .next_state(next_state_use), .select(select), .counter(counter));
endmodule
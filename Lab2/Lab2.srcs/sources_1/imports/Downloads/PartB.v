module uart_transmitter(reset, clk, Tx_DATA, baud_select, Tx_WR, Tx_EN, TxD, Tx_BUSY, sum_inputs, clk_out_use, current_state_use, next_state_use, select);
    input reset, clk, Tx_EN, Tx_WR;
    input [7:0] Tx_DATA;
    input [2:0] baud_select;
    output TxD, Tx_BUSY;
    wire clk_out, clk_out_slow;
    output [3:0] sum_inputs;

    /*TEST PARAMETERS*/
    output clk_out_use, select;                 assign clk_out_use = clk_out_slow;
    output [3:0] current_state_use, next_state_use;

    //initialises the baud rate
    baud_controller baud_controller_tx_inst(.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(clk_out));

    //makes the clock 16 times slower
    clk_multiplier multiply(.clk_out(clk_out), .clk_out_slow(clk_out_slow));

    //calculates the parity bit
    assign sum_inputs = Tx_DATA[0] ^ Tx_DATA[1] ^ Tx_DATA[2] ^ Tx_DATA[3] ^ Tx_DATA[4] ^ Tx_DATA[5] ^ Tx_DATA[6] ^ Tx_DATA[7];

    //transmits the bits in serial mode every 16 clock cycles
    send_bits transmit(.clk_out(clk_out_slow), .reset(reset), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .Tx_DATA(Tx_DATA), .Tx_BUSY(Tx_BUSY), .TxD(TxD), .sum_inputs(sum_inputs), .current_state(current_state_use), .next_state(next_state_use), .select(select));
endmodule
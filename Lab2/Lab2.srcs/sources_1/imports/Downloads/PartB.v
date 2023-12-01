module uart_transmitter(reset, clk, Tx_DATA, baud_select, Tx_WR, Tx_EN, TxD, Tx_BUSY, sum_inputs, counter_use, set_clk_counter_use, clk_out_use, busy_select_use, second_counter_use);
    input reset, clk, Tx_EN, Tx_WR;
    input [7:0] Tx_DATA;
    input [2:0] baud_select;
    output TxD, Tx_BUSY;
    wire clk_out, busy_select;
    wire [3:0] counter, set_clk_counter, second_counter;
    output [3:0] sum_inputs;

    /*TEST PARAMETERS*/
    output [3:0] counter_use;           assign counter_use = counter;
    output [3:0] set_clk_counter_use;   assign set_clk_counter_use = set_clk_counter;
    output clk_out_use;                 assign clk_out_use = clk_out;
    output busy_select_use;             assign busy_select_use = busy_select;
    output [3:0] second_counter_use;    assign second_counter_use = second_counter;

    //initialises the baud rate
    baud_controller baud_controller_tx_inst(.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(clk_out));

    //sums all the one's of the input
    assign sum_inputs = Tx_DATA[0] ^ Tx_DATA[1] ^ Tx_DATA[2] ^ Tx_DATA[3] ^ Tx_DATA[4] ^ Tx_DATA[5] ^ Tx_DATA[6] ^ Tx_DATA[7];

    //checks if the requirements are met to start the transmit process
   // parameter_checkB check(.clk_out(clk_out), .reset(reset), .Tx_EN(Tx_EN), .busy_select(busy_select), .Tx_WR(Tx_WR), .counter(counter), .set_clk_counter(set_clk_counter), .second_counter(second_counter));

    //transmits the bits in serial mode every 16 clock cycles
    send_bits transmit(.clk_out(clk_out), .reset(reset), .Tx_DATA(Tx_DATA), .counter(counter), .set_clk_counter(set_clk_counter), .Tx_BUSY(Tx_BUSY), .TxD(TxD), .sum_inputs(sum_inputs), .busy_select(busy_select));
endmodule
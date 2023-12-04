module uart_receiver(reset, clk, Rx_DATA, baud_select, Rx_EN, RxD, Rx_FERROR, Rx_PERROR, Rx_VALID, current_state, next_state, counter_begin, temp, select_begin, starter, clk_out_slow_use, clk_out_use);
    input reset, clk, Rx_EN, RxD;
    input [2:0] baud_select;
    output [7:0] Rx_DATA;
    output Rx_FERROR, Rx_PERROR, Rx_VALID;
    wire clk_out_slow, clk_out;

    /* Test Parameters*/
    output [3:0] current_state, next_state;
    output [4:0] counter_begin;
    output [7:0] temp;
    output starter, select_begin;
    output clk_out_slow_use, clk_out_use;
        assign clk_out_slow_use = clk_out_slow;
        assign clk_out_use = clk_out;

    baud_controller baud_controller_rx_inst(.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(clk_out));

    //makes the clock 16 times slower
    ckl_multiplier multiply(.clk_out(clk_out), .clk_out_slow(clk_out_slow));

    receive_bits receive(clk_out, clk_out_slow, reset, Rx_EN, RxD, Rx_DATA, Rx_FERROR, Rx_PERROR, Rx_VALID, current_state, next_state, counter_begin, temp, select_begin, starter);
   // receive_bits receive(.clk_out(clk_out), .clk_out_slow(clk_out_slow), .reset(reset), .Rx_EN(Rx_EN), .RxD(RxD), .Rx_DATA(Rx_DATA), .Rx_FERROR(Rx_FERROR), .Rx_PERROR(Rx_PERROR), .Rx_VALID(Rx_VALID), .current_state(current_state), next_state(next_state), .counter_begin(counter_begin), .temp(temp), .select_begin(select_begin), .starter(starter));
endmodule
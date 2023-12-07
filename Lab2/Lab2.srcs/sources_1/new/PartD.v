module UART(); 
    //input clk, reset;
    
    uart_transmitter transmitter(reset, clk, Tx_DATA, baud_select, Tx_WR, Tx_EN, TxD, Tx_BUSY, sum_inputs); 
    
     uart_receiver receiver(reset, clk, Rx_DATA, baud_select, Rx_EN, RxD, Rx_FERROR, Rx_PERROR, Rx_VALID);

endmodule
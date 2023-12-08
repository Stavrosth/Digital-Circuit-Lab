module UART(clk, reset, baud_select, Tx_EN, Tx_WR, Tx_DATA, Tx_BUSY, Rx_EN, Rx_FERROR, Rx_PERROR, Rx_VALID, Rx_DATA);//, data_transfer_use);
    input clk, reset;
    input [3:0] baud_select;
    wire data_transfer;
    //output data_transfer_use; assign data_transfer_use = data_transfer;

    //Transmitter
    input Tx_EN, Tx_WR;
    input [7:0] Tx_DATA;
    output Tx_BUSY;

    //receiver
    input Rx_EN;
    output Rx_FERROR, Rx_PERROR, Rx_VALID;
    output [7:0] Rx_DATA;
    
    //transmitter
    uart_transmitter transmitter(reset, clk, Tx_DATA, baud_select, Tx_WR, Tx_EN, data_transfer, Tx_BUSY); 
    
    //receiver
    uart_receiver receiver(reset, clk, Rx_DATA, baud_select, Rx_EN, data_transfer, Rx_FERROR, Rx_PERROR, Rx_VALID);
endmodule
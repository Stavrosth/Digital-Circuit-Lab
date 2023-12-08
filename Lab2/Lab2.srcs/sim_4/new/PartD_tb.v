module PartD_tb;
    reg clk, reset;
    reg [3:0] baud_select;
    wire data_transfer;

    //Transmitter
    reg Tx_EN, Tx_WR;
    reg [7:0] Tx_DATA;
    wire Tx_BUSY;

    //receiver
    reg Rx_EN;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID;
    wire [7:0] Rx_DATA;

    UART implementation(clk, reset, baud_select, Tx_EN, Tx_WR, Tx_DATA, Tx_BUSY, Rx_EN, Rx_FERROR, Rx_PERROR, Rx_VALID, Rx_DATA, data_transfer);

    reg busy_check;
    reg receive_check;
    reg [2:0] select_data;

    //initializes the clk and reset values
    initial begin clk = 1'b0; reset = 1'b0; select_data = 2'b0; end
  
    //Clock generation of 100 MHz
    always #5 clk = ~clk;

    initial begin
        baud_select = 3'b111;
        Rx_EN = 1'b1;
        Tx_EN = 1'b1;
        reset = 1'b1;
        #1000000 reset = 1'b0;
    end

    always @(posedge clk) begin
        if ( select_data == 3'b000) begin Tx_DATA <= 8'b10101010;  Tx_WR <= 1'b1; end
        else if ( select_data == 3'b001) begin Tx_DATA <= 8'b1010101; Tx_WR = 1'b1; end
        else if ( select_data == 3'b010) begin Tx_DATA <= 8'b11001100; Tx_WR = 1'b1; end
        else if ( select_data == 3'b011) begin Tx_DATA <= 8'b10001001; Tx_WR = 1'b1; end
        else if ( select_data == 3'b100) $finish;

        Tx_WR <= 1'b1;
        if (Tx_BUSY == 1'b1 ) begin 
            busy_check <= 1'b1; 
            Tx_WR <= 1'b0; 
        end if ( Rx_VALID == 1'b1 || Rx_FERROR == 1'b1 || Rx_PERROR == 1'b1) 
            receive_check <= 1'b1;

        if (busy_check == 1'b1 && receive_check == 1'b1) begin
            busy_check <= 1'b0;
            receive_check <= 1'b0;
            select_data <= select_data + 1'b1;
        end
    end
endmodule
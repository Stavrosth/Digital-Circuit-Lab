/*Synchronises the initial signal of the button by passing it 
  through 3 flip-flops and a xor gate*/
module SignalSynchronizer(clk_out, signal, signal_use);
    input signal, clk_out;
    output reg signal_use;
    reg signal1, signal2, signal3;
    wire signal_enable;

    //passes the signal through 3 flip-flops
    always @(posedge clk_out) signal1 <= signal;
    always @(posedge clk_out) signal2 <= signal1;
    always @(posedge clk_out) signal3 <= signal2;    
    
    //xor gate
    assign signal_enable = signal3^signal2;
    
    //makes sure metastathia has not occured
    always @(posedge clk_out) begin
        if ( signal_enable == 1'b0 && signal3 == 1'b1)
            signal_use = 1'b1;
        else 
            signal_use = 1'b0;
    end
endmodule
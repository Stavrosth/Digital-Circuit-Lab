module Hsync(clk, reset, Hsync, Hpixel, Hsync_allow);
    input clk, reset;
    output reg Hsync, Hsync_allow;
    output reg [6:0] Hpixel;

    reg current_state, next_state;
    reg [11:0] counter=12'b0;
    //A:3200 cycles
    //B:384  cycles
    //C:192  cycles
    //D:2560 cycles
    //E:63   cycles

    //FSM
    always @(current_state) begin
        

        case (current_state)
            : 
            default: 
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if ( reset == 1'b1)
            current_state <= 0;
        else 
            current_state <= next_state;
    end
    
endmodule
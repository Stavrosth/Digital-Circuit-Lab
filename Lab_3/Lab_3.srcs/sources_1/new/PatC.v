module Vsync(clk, reset, Vsync, Vpixel, Vsync_allow);
    input clk, reset;
    output reg Vsync, Vsync_allow;
    output reg [6:0] Vpixel;

    reg current_state, next_state;
    reg [20:0] counter=21'b0;
    //O:1667000 cycles
    //P:6400 cycles
    //Q:92800 cycles
    //R:1536000 cycles
    //S:32000 cycles

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
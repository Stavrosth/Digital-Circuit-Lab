module Hsync(clk, reset, Hsync, Hpixel, Hsync_allow);
    input clk, reset;
    output reg Hsync, Hsync_allow;
    output reg [6:0] Hpixel;

    reg [2:0] current_state, next_state;
    reg [4:0] second_counter;
    reg [11:0] counter;
    //A:3200 cycles
    //B:384  cycles
    //C:192  cycles
    //D:2560 cycles
    //E:63   cycles

    //FSM
    always @(current_state or counter) begin
        next_state = current_state;        
        Hsync = 1'b1;
        Hsync_allow = 1'b0;
        
        case (current_state)
            3'd0:begin//Hsync pulse (B time)
                Hsync = 1'b0;
                if (counter == 12'd384)
                    next_state = 3'd1;
                else
                    next_state = 3'd0;
            end 
            3'd1:begin//Back Porch (C time)
                if (counter ==  12'd576)
                    next_state = 3'd2;
                else
                    next_state = 3'd1;
            end 
            3'd2:begin//Display time (D time)
                Hsync_allow = 1'b1;
                if (counter == 12'd3136)
                    next_state = 3'd3;
                else
                    next_state = 3'd2;
            end 
            3'd3: begin//Front Porch (E time)
                if (counter == 12'd3199) begin
                    next_state = 3'd0;
                    counter = 12'b0;
                end else
                    next_state = 3'd3;
            end
            default: begin
                counter = 12'b0;
                Hsync = 1'b1;
                Hsync_allow = 1'b0;
            end
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if ( reset == 1'b1)
            current_state <= 0;
        else 
            current_state <= next_state;
    end

    always @(posedge clk or posedge reset) begin
        if ( reset == 1'b1) begin
            Hpixel <= 7'b0;
            second_counter <= 5'b0;
            counter <= 12'b0;
        end else begin 
            counter <= counter + 1'b1;
            if (Hsync_allow == 1'b1) begin
                second_counter <= second_counter + 1'b1;

                if (second_counter == 5'd19) begin
                    Hpixel <= Hpixel + 1'b1;
                    second_counter <= 5'd0;
                end
            end
        end
    end
    
endmodule
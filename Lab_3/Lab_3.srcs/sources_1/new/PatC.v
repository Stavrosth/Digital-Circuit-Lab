module Vsync(clk, reset, Vsync, Vpixel, Vsync_allow);
    input clk, reset;
    output reg Vsync, Vsync_allow;
    output reg [6:0] Vpixel;

    reg [2:0] current_state, next_state;
    reg [15:0] second_counter;
    reg [20:0] counter=21'b0;
    //O:1667000 cycles
    //P:6400 cycles
    //Q:92800 cycles
    //R:1536000 cycles
    //S:32000 cycles

    //FSM
    always @(current_state or counter) begin
        next_state = current_state;        
        Vsync = 1'b1;
        Vsync_allow = 1'b0;

       case (current_state)
            3'd0:begin//Hsync pulse (B time)
                Vsync = 1'b0;
                if (counter == 21'd6400)
                    next_state = 3'd1;
                else
                    next_state = 3'd0;
            end 
            3'd1:begin//Back Porch (C time)
                if (counter ==  21'd99200)
                    next_state = 3'd2;
                else
                    next_state = 3'd1;
            end 
            3'd2:begin//Display time (D time)
                Vsync_allow = 1'b1;
                if (counter == 21'd1635200)
                    next_state = 3'd3;
                else
                    next_state = 3'd2;
            end 
            3'd3: begin//Front Porch (E time)
                if (counter == 21'd1667200) begin ////////////propably should be 1667000
                    next_state = 3'd0;
                    counter = 21'b0;
                end else
                    next_state = 3'd3;
            end
            default: begin
                counter = 21'b0;
                Vsync = 1'b1;
                Vsync_allow = 1'b0;
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
            Vpixel <= 7'b0;
            second_counter <= 15'b0;
            counter <= 12'b0;
        end else begin 
            counter <= counter + 1'b1;
            if (Vsync_allow == 1'b1) begin
                second_counter <= second_counter + 1'b1;

                if (second_counter == 15'd16000) begin
                    Vpixel <= Vpixel + 1'b1;
                    second_counter <= 5'd0;
                end
            end
        end
    end

endmodule
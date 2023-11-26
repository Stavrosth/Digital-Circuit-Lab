module AntiBounce(clk_out, reset_use, button_use, button_real, anti_bounce);
    input clk_out, reset_use, button_use;
    output reg  button_real;
    output reg [10:0] anti_bounce=18'h3FFFF;

    always @(posedge clk_out or posedge reset_use) begin
        if ( reset_use == 1'b1) begin //resets the counter
            anti_bounce <= 18'h3FFFF;
            button_real <= 1'b0;
        end else begin
            if (button_use == 1'b0) begin
                anti_bounce <= 18'h3FFFF;
                button_real <= 1'b0;
            end
            if (button_use == 1'b1 && anti_bounce > 11'b0) //reduces the counter if button=1
                anti_bounce <= anti_bounce - 1;
            else if (anti_bounce == 11'b0) //assigns the button to because 100 us has passed
                button_real <= 1'b1;
        end
    end
endmodule
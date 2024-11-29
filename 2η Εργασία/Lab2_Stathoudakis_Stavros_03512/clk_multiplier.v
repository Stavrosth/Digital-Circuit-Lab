/* Has as an output a signal that is 16 times slower than the inputed clock*/
module ckl_multiplier(clk, clk_out, clk_out_slow);
    input clk_out, clk;
    output reg clk_out_slow;
    reg [3:0] counter=4'b0;

    always @(posedge clk) begin 
        if ( clk_out == 1'b1) begin
            counter <= counter + 1'b1;

            if (counter == 4'b1111)
                clk_out_slow <= 1'b1;
            else
                clk_out_slow <= 1'b0;
        end

        if ( clk_out_slow == 1'b1)
            clk_out_slow <= 1'b0;
    end
endmodule
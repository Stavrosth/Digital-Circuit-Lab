module ckl_multiplier(clk_out, clk_out_slow, counter);
    input clk_out;
    output reg clk_out_slow;
    output reg [3:0] counter=4'b0;

    always @(posedge clk_out) begin 
        counter <= counter + 1'b1;

        if (counter == 4'b1111)
            clk_out_slow <= 1'b1;
        else
            clk_out_slow <= 1'b0;
    end
endmodule
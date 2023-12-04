module ckl_multiplier(clk_out, clk_out_quick);
    input clk_out;
    output reg clk_out_quick
    reg [3:0] counter;

    always @(posedge clk_out) begin 
        counter <= counter + 1'b1;

        if ( counter == 4'b0)
            clk_out_quick <= 1'b1;
        else
            clk_out_quick <= 1'b0;
    end
endmodule
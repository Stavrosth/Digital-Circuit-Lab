module FourBitCounter(clk_out, reset_use, count);
    input clk_out, reset_use;
    output reg [3:0] count=4'b1111;

    always @(posedge clk_out or posedge reset_use) begin
        if (reset_use == 1'b1)
            count <= 4'b1111;
        else
            count <= count - 1;
    end
endmodule
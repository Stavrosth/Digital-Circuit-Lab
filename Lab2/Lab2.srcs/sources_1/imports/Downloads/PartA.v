/* Based on the desired BaudRate a corresponding sample_enable 
   signal is outputed with a period of 1/(16*Baud_rate) that works 
   as a clock for the uart modules*/
module baud_controller(reset, clk, baud_select, sample_ENABLE);//, counter_out);
    input reset, clk;
    input [2:0] baud_select;
    output reg sample_ENABLE;
    reg [18:0] counter=15'b0, target_counter;
 //output [14:0] counter_out; assign counter_out = counter;
    
    //based on the desired baud rate, a corresponding counter lmit is selected
    always @(posedge clk) begin
      case (baud_select)
        3'b000: target_counter <= 15'd20833; //20833,33 ~ 20833 
        3'b001: target_counter <= 15'd5208;  //5208,33 ~ 5208    
        3'b010: target_counter <= 15'd1302;  //1302,,083 ~ 1302
        3'b011: target_counter <= 15'd651;   //651,041 ~ 651
        3'b100: target_counter <= 15'd325;   //325,52 ~ 325
        3'b101: target_counter <= 15'd162;   //162,76 ~ 162
        3'b110: target_counter <= 15'd108;   //108,5 ~ 108
        3'b111: target_counter <= 15'd54;    //54,25 ~ 54
      endcase
    end

    //changes the enable signal once every time the couter has reached its target value
    always @(posedge clk or posedge reset) begin
        if ( 16*target_counter <= counter) begin
            sample_ENABLE <= 1'b1; 
            counter <= 15'b0; //resets the counter
        end else if ( counter == 15'b0 || reset == 1'b0) begin
            sample_ENABLE <= 1'b0; //resets the enable signal
            counter <= counter + 1'b1; //increases the counter
        end else
            counter <= counter + 1'b1; //increases the counter
    end
endmodule
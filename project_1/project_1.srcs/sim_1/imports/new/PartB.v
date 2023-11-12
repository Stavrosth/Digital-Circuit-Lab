module FourDigitLEDdriver(reset, clk, an3, an2, an1, an0, a, b, c, d, e, f, g, dp);
    input clk, reset;
    output reg an3,an2,an1,an0;
    output a, b, c, d, e, f, g, dp;
    reg [3:0] char, count;
    
    MMCME2_BASE #(
        .BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
        .CLKFBOUT_MULT_F(6.0),    // Multiply value for all CLKOUT (2.000-64.000).
        .CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
        .CLKIN1_PERIOD(10.0),      // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
        // CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
        .CLKOUT1_DIVIDE(120),
        .CLKOUT0_DIVIDE_F(1.0),  // Divide amount for CLKOUT0 (1.000-128.000).
        // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
        .CLKOUT1_DUTY_CYCLE(0.5),
        // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
        .CLKOUT1_PHASE(0.0),
        .CLKOUT4_CASCADE("FALSE"), // Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
        .DIVCLK_DIVIDE(1),         // Master division value (1-106)
        .REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
        .STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
    )
    
    MMCME2_BASE_inst (
        // Clock Outputs: 1-bit (each) output: User configurable clock outputs
        .CLKOUT1(clk), // 1-bit output: CLKOUT1
       // .CLKOUT1B(CLKOUT1B),   // 1-bit output: Inverted CLKOUT1
        // Feedback Clocks: 1-bit (each) output: Clock feedback ports
        .CLKFBOUT(CLKFBIN),   // 1-bit output: Feedback clock
        //.CLKFBOUTB(CLKFBOUTB), // 1-bit output: Inverted CLKFBOUT
        // Status Ports: 1-bit (each) output: MMCM status ports
        //.LOCKED(LOCKED),       // 1-bit output: LOCK
        // Clock Inputs: 1-bit (each) input: Clock input
        //.CLKIN1(CLKIN1),       // 1-bit input: Clock
        // Control Ports: 1-bit (each) input: MMCM control ports
        //.PWRDWN(PWRDWN),       // 1-bit input: Power-down
        //.RST(RST),             // 1-bit input: Reset
        // Feedback Clocks: 1-bit (each) input: Clock feedback ports
        .CLKFBIN(CLKFBIN)      // 1-bit input: Feedback clock
    );  

    //4-bit counter
    always @(posedge clk)
        begin
            if (reset == 1)
                count = 4'b1111;
            else
                count = count - 1;
        end

    wire [3:0] count_use;
    assign count_use = count; 

    //anodes
    always @(count_use) 
    begin
        case(count_use)
            4'b0000:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0000; end
            4'b0001:{an3, an2, an1, an0} =4'b1111;  
            4'b0010:{an3, an2, an1, an0} =4'b1110;
            4'b0011:{an3, an2, an1, an0} =4'b1111;
            4'b0100:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0011; end
            4'b0101:{an3, an2, an1, an0} =4'b1111;
            4'b0110:{an3, an2, an1, an0} =4'b1101;
            4'b0111:{an3, an2, an1, an0} =4'b1111;
            4'b1000:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0010; end
            4'b1001:{an3, an2, an1, an0} =4'b1111;
            4'b1010:{an3, an2, an1, an0} =4'b1011;
            4'b1011:{an3, an2, an1, an0} =4'b1111;
            4'b1100:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0001; end
            4'b1101:{an3, an2, an1, an0} =4'b1111;
            4'b1110:{an3, an2, an1, an0} =4'b0111;
            4'b1111:{an3, an2, an1, an0} =4'b1111;
        endcase
    end
    
    LEDdecoder LEDdecoder_inst (.char(char), .LED({a,b,c,d,e,f,g,dp}));

endmodule


// MMCME2_BASE : In order to incorporate this function into the design,
//   Verilog   : the following instance declaration needs to be placed
//  instance   : in the body of the design code.  The instance name
// declaration : (MMCME2_BASE_inst) and/or the port declarations within the
//    code     : parenthesis may be changed to properly reference and
//             : connect this function to the design.  All inputs
//             : and outputs must be connected.
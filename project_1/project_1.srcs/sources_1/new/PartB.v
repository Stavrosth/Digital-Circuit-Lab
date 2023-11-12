module FourDigitLEDdriver(reset, clk, an3, an2, an1, an0, a, b, c, d, e, f, g, dp, test);
    input clk, reset;
    output a, b, c, d, e, f, g, dp;
    output reg an3, an2, an1, an0;
    wire [3:0] count_use;
    reg [3:0] char, count=4'b1111; //initializes counter
    wire clk_out; //Clock that is outputed after 

    //modules for clock speed modification
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
        // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).          //  All inputs  and outputs must be connected.
        .CLKOUT1_PHASE(0.0),
        .CLKOUT4_CASCADE("FALSE"), // Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
        .DIVCLK_DIVIDE(1),         // Master division value (1-106)
        .REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
        .STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
    )
    
    MMCME2_BASE_inst (
        // Clock Outputs: 1-bit (each) output: User configurable clock outputs
        .CLKOUT1(clk_out), // 1-bit output: CLKOUT1
        .CLKOUT1B(CLKOUT1B),   // 1-bit output: Inverted CLKOUT1
        // Feedback Clocks: 1-bit (each) output: Clock feedback ports
        .CLKFBOUT(CLKFBIN),   // 1-bit output: Feedback clock
        .CLKFBOUTB(CLKFBOUTB), // 1-bit output: Inverted CLKFBOUT
        .LOCKED(LOCKED),       // 1-bit output: LOCK
        // Clock Inputs: 1-bit (each) input: Clock input
        .CLKIN1(clk),       // 1-bit input: Clock
        // Control Ports: 1-bit (each) input: MMCM control ports
        .PWRDWN(PWRDWN),       // 1-bit input: Power-down
        .RST(RST),             // 1-bit input: Reset
        // Feedback Clocks: 1-bit (each) input: Clock feedback ports
        .CLKFBIN(CLKFBIN)      // 1-bit input: Feedback clock
    );

    //4-bit counter
    always @(posedge clk_out) begin
        if (reset == 1'b1)
            count = 4'b1111;
        else
            count = count - 1;
    end
    
    assign count_use = count;
    assign dp = 1'b0;
    output test;
    assign test = clk_out;
  
    //Driving anodes
    always @(count_use) 
    begin
        case(count_use)
            4'b0000:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0000; end
            4'b0001:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0011; end
            4'b0010:begin {an3, an2, an1, an0} =4'b1110; char = 4'b0011; end
            4'b0011:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0011; end
            4'b0100:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0011; end
            4'b0101:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0010; end
            4'b0110:begin {an3, an2, an1, an0} =4'b1101; char = 4'b0010; end
            4'b0111:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0010; end
            4'b1000:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0010; end
            4'b1001:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0001; end
            4'b1010:begin {an3, an2, an1, an0} =4'b1011; char = 4'b0001; end
            4'b1011:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0001; end
            4'b1100:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0001; end
            4'b1101:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0000; end
            4'b1110:begin {an3, an2, an1, an0} =4'b0111; char = 4'b0000; end
            4'b1111:begin {an3, an2, an1, an0} =4'b1111; char = 4'b0000; end
        endcase
    end
    
    LEDdecoder LEDdecoder_inst (char, {a, b, c, d, e, f, g});

endmodule
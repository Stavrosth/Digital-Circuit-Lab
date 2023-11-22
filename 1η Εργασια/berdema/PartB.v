module FourDigitLEDdriver(reset, clk, an3, an2, an1, an0, a, b, c, d, e, f, g, dp);//, char);
    input clk, reset=1'b1;
    output a, b, c, d, e, f, g, dp;
    output an3, an2, an1, an0;
    reg [3:0] count=4'b1111; //initializes counter
    wire [3:0] char, count_use;
    wire clk_out; //Clock that is outputed after modification
    reg reset_temp, reset_use;

    //modules for clock speed modification
    MMCME2_BASE #(
        .BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
        .CLKFBOUT_MULT_F(6.0),     // Multiply value for all CLKOUT (2.000-64.000).
        .CLKFBOUT_PHASE(0.0),      // Phase offset in degrees of CLKFB (-360.000-360.000).
        .CLKIN1_PERIOD(10.0),       // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
        // CLKOUT0_DIVIDE - CLKOUT6_DIVIDE: Divide amount for each CLKOUT (1-128)
        .CLKOUT1_DIVIDE(120),
        .CLKOUT2_DIVIDE(1),
        .CLKOUT3_DIVIDE(1),
        .CLKOUT4_DIVIDE(1),
        .CLKOUT5_DIVIDE(1),
        .CLKOUT6_DIVIDE(1),
        .CLKOUT0_DIVIDE_F(1.0),    // Divide amount for CLKOUT0 (1.000-128.000).
        // CLKOUT0_DUTY_CYCLE - CLKOUT6_DUTY_CYCLE: Duty cycle for each CLKOUT (0.01-0.99).
        .CLKOUT0_DUTY_CYCLE(0.5),
        .CLKOUT1_DUTY_CYCLE(0.5),
        .CLKOUT2_DUTY_CYCLE(0.5),
        .CLKOUT3_DUTY_CYCLE(0.5),
        .CLKOUT4_DUTY_CYCLE(0.5),
        .CLKOUT5_DUTY_CYCLE(0.5),
        .CLKOUT6_DUTY_CYCLE(0.5),
        // CLKOUT0_PHASE - CLKOUT6_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
        .CLKOUT0_PHASE(0.0),
        .CLKOUT1_PHASE(0.0),
        .CLKOUT2_PHASE(0.0),
        .CLKOUT3_PHASE(0.0),
        .CLKOUT4_PHASE(0.0),
        .CLKOUT5_PHASE(0.0),
        .CLKOUT6_PHASE(0.0),
        .CLKOUT4_CASCADE("FALSE"), // Cascade CLKOUT4 counter with CLKOUT6 (FALSE, TRUE)
        .DIVCLK_DIVIDE(1),         // Master division value (1-106)
        .REF_JITTER1(0.0),         // Reference input jitter in UI (0.000-0.999).
        .STARTUP_WAIT("FALSE")     // Delays DONE until MMCM is locked (FALSE, TRUE)
    )
    MMCME2_BASE_inst (
        // Clock Outputs: 1-bit (each) output: User configurable clock outputs
        .CLKOUT0(CLKOUT0),     // 1-bit output: CLKOUT0
        .CLKOUT0B(CLKOUT0B),   // 1-bit output: Inverted CLKOUT0
        .CLKOUT1(clk_out),     // 1-bit output: CLKOUT1
        .CLKOUT1B(CLKOUT1B),   // 1-bit output: Inverted CLKOUT1
        .CLKOUT2(CLKOUT2),     // 1-bit output: CLKOUT2
        .CLKOUT2B(CLKOUT2B),   // 1-bit output: Inverted CLKOUT2
        .CLKOUT3(CLKOUT3),     // 1-bit output: CLKOUT3
        .CLKOUT3B(CLKOUT3B),   // 1-bit output: Inverted CLKOUT3
        .CLKOUT4(CLKOUT4),     // 1-bit output: CLKOUT4
        .CLKOUT5(CLKOUT5),     // 1-bit output: CLKOUT5
        .CLKOUT6(CLKOUT6),     // 1-bit output: CLKOUT6
        // Feedback Clocks: 1-bit (each) output: Clock feedback ports
        .CLKFBOUT(CLKFBIN),   // 1-bit output: Feedback clock
        .CLKFBOUTB(CLKFBOUTB), // 1-bit output: Inverted CLKFBOUT
        // Status Ports: 1-bit (each) output: MMCM status ports
        .LOCKED(LOCKED),       // 1-bit output: LOCK
        // Clock Inputs: 1-bit (each) input: Clock input
        .CLKIN1(clk),       // 1-bit input: Clock
        // Control Ports: 1-bit (each) input: MMCM control ports
        .PWRDWN(PWRDWN),       // 1-bit input: Power-down
        .RST(RST),             // 1-bit input: Reset
        // Feedback Clocks: 1-bit (each) input: Clock feedback ports
        .CLKFBIN(CLKFBIN)      // 1-bit input: Feedback clock
    );

    //synchronizes reset in order to avoid metasthathia
    always @(posedge clk_out) reset_temp <= reset;
    always @(posedge clk_out) reset_use <= reset_temp;

    //4-bit counter
    always @(posedge clk_out or posedge reset_use) begin
        if (reset_use == 1'b1)
            count <= 4'b1111;
        else
            count <= count - 1;
    end
    
    assign count_use = count;

    //Drives Anodes and assigns the approptiate char
    anodes anodesDrive2(count_use, char, {an3, an2, an1, an0}, 4'b0000);

    //assigns the LED display from 0 to 3 in series
    LEDdecoder LEDdecoder_inst2(char, {a, b, c, d, e, f, g, dp});

endmodule
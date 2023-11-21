module ButtonRotate(clk, reset, an3, an2, an1, an0, a, b, c, d, e, f, g, dp, button_move);//, test, button, char_use, count_use_test, clk_use);
    input clk, reset=1'b1;
    input button_move=1'b0;
    output an3, an2, an1, an0;
    output  a, b, c, d, e, f, g, dp;
    reg [3:0] message [15:0]; //stores the memory
    reg button_real=1'b0, second_counter=1'b0, reset_temp, reset_use, button_use, button_temp;
    reg [3:0] pointer=4'b0000, count=4'b1111;
    reg [10:0] anti_bounce=11'b11111111111;
    wire [3:0] char, count_use;
    wire clk_out, reset_real;

    //memory instantiation
    always @(posedge reset_real) begin
        message[0] =  4'b0000;
        message[1] =  4'b0001;
        message[2] =  4'b0010;
        message[3] =  4'b0011;
        message[4] =  4'b0100;
        message[5] =  4'b0101;
        message[6] =  4'b0110;
        message[7] =  4'b0111;
        message[8] =  4'b1000;
        message[9] =  4'b1001;
        message[10] = 4'b1010;
        message[11] = 4'b1011;
        message[12] = 4'b1100;
        message[13] = 4'b1101;
        message[14] = 4'b1110;
        message[15] = 4'b1111;
    end


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
    always @(posedge clk_out) begin 
        reset_temp <= reset;
        button_temp <= button_real;
    end
    
    always @(posedge clk_out) begin 
        reset_use <= reset_temp;
        button_use <= button_temp;
    end
    
    assign reset_real = reset_use;
    
    //counter
    assign count_use = count;
    always @(posedge clk_out or posedge reset_real) begin
        if (reset_real == 1'b1)
            count <= 4'b1111;
        else
            count <= count - 1;
    end

    //anti-bounce
    always @(posedge clk_out or posedge reset_real) begin
        if ( reset_real == 1'b1 || button_move == 1'b0) begin //resets the counter
            anti_bounce <= 11'b11111111111;
            button_real <= 1'b0;
        end else if ( reset_real == 1'b0 && button_move == 1'b1 )
            anti_bounce <= anti_bounce;

        if (button_move == 1'b1 && anti_bounce > 11'b00000000000 ) //reduces the counter if button=1
            anti_bounce <= anti_bounce - 1;
        else if (anti_bounce == 11'b00000000000) //assigns the button to 1 because 500 us has passed
            button_real <= 1'b1; //in order not to create a latch
    end

    //makes the pointer move 4 stages after the button is 1 so we have a smooth transition
    always @(posedge clk_out) begin
        if ( button_real == 1'b1 && second_counter == 1'b0) begin //increases the pointer
            pointer <= pointer + 1'b1;
            second_counter <= 1'b1; //makes sure the pointer is not increasing repeatdly
        end else if ( button_move == 1'b0)
            second_counter <= 1'b0;
    end
    
    //Drives Anodes and assigns the approptiate char
    anodes anodesDrive3(count_use, char, {an3, an2, an1, an0}, pointer);
    
    //assigns the LED display based on the memory
    LEDdecoder LEDdecoder_inst3(char, {a, b, c, d, e, f, g, dp});
    
    /* TEST PARAMETERS
    //wire second_counter_use;
    output [3:0] test, char_use, count_use_test;
    output [10:0] button;
    output clk_use;

    //assign second_counter_use = second_counter;
    assign test = pointer;
    assign button = anti_bounce;
    assign char_use = char;
    assign count_use_test = count_use;
    assign clk_use = clk_out;*/
endmodule
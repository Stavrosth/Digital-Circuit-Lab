module vgacontroller(reset, clk, VGA_RED, VGA_GREEN, VGA_BLUE, VGA_HSYNC, VGA_VSYNC);
    input reset, clk;
    output VGA_RED, VGA_GREEN, VGA_BLUE;
    output VGA_HSYNC, VGA_VSYNC;
    
    wire Vsync_allow, Hsync_allow;
    wire [6:0] Vpixel, Hpixel;
    wire [13:0] address;

    //assigns the address of the pixels that goes into the VRAM
    assign address = (Hsync_allow == 1'b1 && Vsync_allow == 1'b1) ? {Vpixel, Hpixel} : 14'b0;

    //intantiates the memories
    VRAMred   red  (.DO(VGA_RED)  , .ADDR(address), .CLK(clk), .DI(0), .EN(1), .REGCE(0), .RST(reset), .WE(0));
    VRAMgreen green(.DO(VGA_GREEN), .ADDR(address), .CLK(clk), .DI(0), .EN(1), .REGCE(0), .RST(reset), .WE(0));
    VRAMblue  blue (.DO(VGA_BLUE) , .ADDR(address), .CLK(clk), .DI(0), .EN(1), .REGCE(0), .RST(reset), .WE(0));

    //modules that control the vsync and hsync times for the VGA display
    //Hsync hsync(.clk(clk), .reset(reset), .Hsync(VGA_HSYNC), .Hpixel(Hpixel), .Hsync_allow(Hsync_allow));
    //Vsync vsync(.clk(clk), .reset(reset), .Vsync(VGA_VSYNC), .Vpixel(Vpixel), .Vsync_allow(Vsync_allow));
endmodule
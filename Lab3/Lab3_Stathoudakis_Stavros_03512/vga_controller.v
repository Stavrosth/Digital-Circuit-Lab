module vgacontroller(reset, clk, VGA_RED, VGA_GREEN, VGA_BLUE, VGA_HSYNC, VGA_VSYNC);
    input reset, clk;
    output VGA_RED, VGA_GREEN, VGA_BLUE;
    output VGA_HSYNC, VGA_VSYNC;
    
    wire Vsync_allow, Hsync_allow;
    wire [6:0] Vpixel, Hpixel;
    wire [13:0] address;

    //assigns the address of the pixels that goes into the VRAM if possible
    assign address = (Hsync_allow == 1'b1 && Vsync_allow == 1'b1) ? {Vpixel, Hpixel} : 14'd13000;

    //runs through the VRAM for each colour
    VRAMred   red  (.DO(VGA_RED)  , .ADDR(address), .CLK(clk), .RST(reset));
    VRAMgreen green(.DO(VGA_GREEN), .ADDR(address), .CLK(clk), .RST(reset));
    VRAMblue  blue (.DO(VGA_BLUE) , .ADDR(address), .CLK(clk), .RST(reset));

    //modules that control the vsync and hsync time periods for the VGA display
    Hsync hsync(.clk(clk), .reset(reset), .Hsync(VGA_HSYNC), .Hpixel(Hpixel), .Hsync_allow(Hsync_allow));
    Vsync vsync(.clk(clk), .reset(reset), .Vsync(VGA_VSYNC), .Vpixel(Vpixel), .Vsync_allow(Vsync_allow));
endmodule
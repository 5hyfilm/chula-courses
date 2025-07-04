`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2021 09:31:37 PM
// Design Name: 
// Module Name: system
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module system(
//    input wire [11:0]sw, //vga
//    input btnC, btnU, btnL, //vga
//    output wire Hsync, Vsync, //vga
//    output wire [3:0] vgaRed, vgaGreen, vgaBlue, //vga
    output wire [6:0] seg,
    output wire [3:0] an,
    output dp,
    output wire RsTx, //uart
    input wire RsRx, //uart
    input clk //both
    );

/*    
vga vga(
    .clk(clk), .sw(sw),
    .push({btnL, btnU}),
    .hsync(Hsync), .vsync(Vsync),
    .rgb({vgaRed, vgaGreen, vgaBlue})
    );
*/
uart uart(clk,RsRx,RsTx,seg);
assign an = 4'b1110;
assign dp = 1;
//hexTo7Segment hexTo7Segment(seg, RsTx);

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 01:19:16 PM
// Design Name: 
// Module Name: quadSevenSeg
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


module quadSevenSeg(
    output [6:0] seg,
    output dp,
    output an0,
    output an1,
    output an2,
    output an3,
    input [3:0] num0, // most right
    input [3:0] num1,
    input [3:0] num2,
    input [3:0] num3, // most left
    input clk
    );
    
    reg [1:0] ns; // next stage
    reg [1:0] ps; // present stage
    reg [3:0] dispEn; // which 7seg is active
    
    reg [3:0] hexIn;
    wire [6:0] segments;
    assign seg=segments;
    
    hexTo7Segment segDecode(segments,hexIn);
    assign dp=1; // dot point corresponse with activated an
    assign {an3,an2,an1,an0}=~dispEn;

    // state transition every clock
    always @(posedge clk)
        ps=ns;
    
    // 3 below sequences work parallelly
    always @(ps) 
        ns=ps+1;
    
    always @(ps)
        case(ps)
            2'b00: dispEn=4'b0001;
            2'b01: dispEn=4'b0010;
            2'b10: dispEn=4'b0100;
            2'b11: dispEn=4'b1000;
        endcase
    
    always @(ps)
        case(ps)
            2'b00: hexIn=num0;
            2'b01: hexIn=num1;
            2'b10: hexIn=num2;
            2'b11: hexIn=num3;
        endcase
    
endmodule

module hexTo7Segment(
    output [6:0] segments,
    input [3:0] hex
    );
    
    reg [6:0] segments;
    
// 7-segment encoding
//      0
//     ---
//  5 |   | 1
//     --- <--6
//  4 |   | 2
//     ---
//      3

   always @(hex)
      case (hex)
          4'b0001 : segments = 7'b1111001;   // 1
          4'b0010 : segments = 7'b0100100;   // 2
          4'b0011 : segments = 7'b0110000;   // 3
          4'b0100 : segments = 7'b0011001;   // 4
          4'b0101 : segments = 7'b0010010;   // 5
          4'b0110 : segments = 7'b0000010;   // 6
          4'b0111 : segments = 7'b1111000;   // 7
          4'b1000 : segments = 7'b0000000;   // 8
          4'b1001 : segments = 7'b0010000;   // 9
          4'b1010 : segments = 7'b0001000;   // A
          4'b1011 : segments = 7'b0000011;   // b
          4'b1100 : segments = 7'b1000110;   // C
          4'b1101 : segments = 7'b0100001;   // d
          4'b1110 : segments = 7'b0000110;   // E
          4'b1111 : segments = 7'b0001110;   // F
          default : segments = 7'b1000000;   // 0
      endcase
				
endmodule

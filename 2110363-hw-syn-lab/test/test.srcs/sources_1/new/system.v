`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 02:37:26 PM
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
    output [6:0] seg,
    output dp,
    output [3:0] an,
    input [15:0] sw,
    input clk
    );
    
    wire [3:0] num3,num2,num1,num0;
    wire an0,an1,an2,an3;
    assign an={an3,an2,an1,an0};
    
    wire targetClk;
    wire [18:0] tclk;
    
    assign tclk[0]=clk;
    
    reg [0:0] dp3,dp2,dp1,dp0;
    quadSevenSeg q7seg(seg,dp,an0,an1,an2,an3,num0,num1,num2,num3,targetClk);
    
    stack s1({num1,num0},{num3,num2},sw[7:0],pop,targetClk,push,reset);
endmodule

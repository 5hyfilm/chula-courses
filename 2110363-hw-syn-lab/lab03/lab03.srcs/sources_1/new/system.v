`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 01:01:43 PM
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
    input [7:0] sw, // for inc , dec 4 7-Seg // 7 is the most left
    input btnU, // for set9
    input btnC, // for set0
    input clk
    );
    
    wire [3:0] num3,num2,num1,num0; // left to right
    
    wire an0,an1,an2,an3;
    assign an={an3,an2,an1,an0};
    
    ////////////////////////////////////////
    // Clock
    wire targetClk;
    wire [18:0] tclk;
    
    assign tclk[0]=clk;
    
    genvar c;
    generate for(c=0;c<18;c=c+1) begin
        clockDiv fDiv(tclk[c+1],tclk[c]);
    end endgenerate
    
    clockDiv fdivTarget(targetClk,tclk[18]);
    
    ////////////////////////////////////////
    // Synchronizer
    wire [7:0] d,notd,d2,notd2;
    genvar n;
    generate for(n=0;n<8;n=n+1) begin
        dFlipflop dFF2(d2[n],notd2[n],sw[n],targetClk);
        dFlipflop dFF(d[n],notd[n],d2[n],targetClk);
    end endgenerate
    
    ////////////////////////////////////////
    // Single Pulser
    singlePulser spUP3(up3,d[7],targetClk);
    singlePulser spDOWN3(down3,d[6],targetClk);
    singlePulser spUP2(up2,d[5],targetClk);
    singlePulser spDOWN2(down2,d[4],targetClk);
    singlePulser spUP1(up1,d[3],targetClk);
    singlePulser spDOWN1(down1,d[2],targetClk);
    singlePulser spUP0(up0,d[1],targetClk);
    singlePulser spDOWN0(down0,d[0],targetClk);
    
    ////////////////////////////////////////
    // Counter
    wire cout0,cout1,cout2,cout3;
    wire bout0,bout1,bout2,bout3;
    
   
    
    ////////////////////////////////////////
    // Display
    quadSevenSeg q7seg(seg,dp,an0,an1,an2,an3,num0,num1,num2,num3,targetClk);
    
    reg [3:0] dcba_clk, up_state, down_state;
    
    wire [15:0] hex;
 
    assign hex={num3,num2,num1,num0};
    
    always @(up0) up_state[0] = up0 & (hex[15:0] != 16'h9999);
    always @(up1 or cout0) up_state[1] = (up1 & (hex[15:4] != 12'h999)) | cout0;
    always @(up2 or cout1) up_state[2] = (up2 & (hex[15:8] != 8'h99)) | cout1;
    always @(up3 or cout2) up_state[3] = (up3 & (hex[15:12] != 4'h9)) | cout2;
    always @(down0) down_state[0] = down0 & (hex[15:0] != 4'h0000);
    always @(down1 or bout0) down_state[1] = (down1 & (hex[15:4] != 3'h000)) | bout0;
    always @(down2 or bout1) down_state[2] = (down2 & (hex[15:8] != 2'h00)) | bout1;
    always @(down3 or bout2) down_state[3] = (down3 & (hex[15:12] != 1'h0)) | bout2;
    
    BCDCounter counter0(num0,cout0,bout0,btnU|cout3,btnC|bout3,up_state[0],down_state[0],targetClk);
    BCDCounter counter1(num1,cout1,bout1,btnU|cout3,btnC|bout3,up_state[1],down_state[1],targetClk);
    BCDCounter counter2(num2,cout2,bout2,btnU|cout3,btnC|bout3,up_state[2],down_state[2],targetClk);
    BCDCounter counter3(num3,cout3,bout3,btnU|cout3,btnC|bout3,up_state[3],down_state[3],targetClk);

endmodule
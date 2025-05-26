`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 08:55:17 PM
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
    output [6:0]seg,
    output dp,
    output [3:0]an,
    //input [4:0]sw,
    input clk,
    input btnC
    );
    
    reg [3:0] num3,num2,num1,num0;
    
    wire targetClk;
    wire counterClk;
    wire an0,an1,an2,an3;
    assign an={an3,an2,an1,an0};
    
    wire [18:0] tclk;
    wire [26:0] countclk;
    
    assign tclk[0] = clk;
    assign countclk[0] = clk;
    //assign dp=1;
    genvar c;
    generate for(c=0;c<18;c = c+1)
    begin
        clockDiv fdiv(tclk[c+1],tclk[c]);
    end endgenerate
    
    clockDiv fdivTarget(targetClk,tclk[18]);
    
    genvar c1;
    generate for(c1=0;c1<26;c1 = c1+1)
    begin
        clockDiv fdiv(countclk[c1+1],countclk[c1]);
    end endgenerate
    
    clockDiv fdivTarget1(counterClk,countclk[26]);
    
    //
    reg [0:0] dp3,dp2,dp1,dp0;
    quadSevenSeg q7seg(seg,dp,dp3,dp2,dp1,dp0,an0,an1,an2,an3,num0,num1,num2,num3,targetClk);
    
    //dFlipflop
    wire reset,nreset,d,nd,d2,nd2;
    dFlipflop(d,nd,btnC,counterClk);
    dFlipflop(d2,nd2,d,counterClk);
    
    //single p
    
    singlePulser(reset,d2,counterClk);
    
    //change stage
reg [1:0] stage;
always @(posedge counterClk || reset)
begin
    if (reset) 
        stage = 0;  // stage 0
    else 
        stage = (stage + 1)%3;  
end
    //
    
    wire [19:0] rom[2:0];
    assign rom[0] = 20'b00000011000010001010; // 03.08.
    assign rom[1] = 20'b00100000000000101110; // 2002.
    assign rom[2] = 20'b00000000000000000000; // 0.0.0.0.
    
    always @(posedge targetClk)
        {num3,num2,num1,num0,dp3,dp2,dp1,dp0} = {rom[stage]};
        
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 08:56:46 PM
// Design Name: 
// Module Name: utils
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
    output reg dp,
    input dp3,
    input dp2,
    input dp1,
    input dp0,
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
//    assign dp=1; // dot point corresponse with activated an
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
    always @(ps)
        case(ps)
            2'b00: dp=dp0;
            2'b01: dp=dp1;
            2'b10: dp=dp2;
            2'b11: dp=dp3;
        endcase
endmodule
module quadSevenSeg(
    output [6:0] seg,
    output reg dp,
    input dp3,
    input dp2,
    input dp1,
    input dp0,
    output an0,
    output an1,
    output an2,
    output an3,
    input [3:0]num0,//r most
    input [3:0]num1,
    input [3:0]num2,
    input [3:0]num3,//l most
    input clk
    );

reg [1:0]ns;
reg [1:0]ps;
reg [3:0]dispEn;

reg[3:0] hexIn;
wire [6:0]segments;
assign seg=segments;

hexTo7Segment segD(segments,hexIn);
//assign dp=0;
assign {an3,an2,an1,an0}=~dispEn;

always @(posedge clk)
begin
    ps =ns;
end

always @(ps)
begin
    ns=ps+1;
end

always @(ps)
begin
    case(ps)
        2'b00: dispEn=4'b0001;
        2'b01: dispEn=4'b0010;
        2'b10: dispEn=4'b0100;
        2'b11: dispEn=4'b1000;
    endcase
end

always @(ps)
begin
    case(ps)
        2'b00: hexIn=num0;
        2'b01: hexIn=num1;
        2'b10: hexIn=num2;
        2'b11: hexIn=num3;
    endcase
end

always @(ps)
begin
    case(ps)
        2'b00: dp=dp0;
        2'b01: dp=dp1;
        2'b10: dp=dp2;
        2'b11: dp=dp3;
    endcase
end
endmodule
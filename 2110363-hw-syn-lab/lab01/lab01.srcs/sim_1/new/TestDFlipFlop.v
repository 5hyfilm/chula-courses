`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2024 01:56:02 PM
// Design Name: 
// Module Name: TestDFlipFlop
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


module TestDFlipFlop();
reg clock, nreset, d;

DFlipFlop D1(q,clock,nreset,d);
always
    #10 clock=~clock;
    
initial
begin
    #0 
    d=0; clock=0; nreset=1;
    #33 
    nreset=0;
    #44
    nreset=1; 
    #99
    nreset=0;
    $finish;
end 
always
    #8 d=~d; 
endmodule

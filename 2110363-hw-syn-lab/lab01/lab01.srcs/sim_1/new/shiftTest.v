`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2024 02:08:31 PM
// Design Name: 
// Module Name: shiftTest
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


module shiftTest();

wire [1:0] qA1, qB1;
reg clock, d;

shiftA s1(qA1,clock,d);
shiftB s2(qB1,clock,d);

always
    #10 clock=~clock;
    
initial
begin
    #0 
    d=0; clock=0;
    #99
    $finish;
end 
always
    #8 d=~d; 
endmodule

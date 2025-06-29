`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2024 01:42:34 PM
// Design Name: 
// Module Name: fullAdder2Tester
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


module fullAdder2Tester;
    reg a, b, cin;
    wire cout, s;
    
    fullAdder2 a1(cout, s, a, b, cin);
initial
begin
    $monitor("time %t: {%b %b} <- {%d %d %d}", $time,cout,s,a,b,cin);
    #0;
    a = 0 ;  b = 0 ; cin = 0 ;
    #10
    a = 0 ;  b = 0 ; cin = 1 ;
    #10
    a = 0 ;  b = 1 ; cin = 0 ;
    #10
    a = 0 ;  b = 1 ; cin = 1 ;
    #10
    a = 1 ;  b = 0 ; cin = 0 ;
    #10
    a = 1 ;  b = 0 ; cin = 1 ;
    #10
    a = 1 ;  b = 1 ; cin = 0 ;
    #10
    a = 1 ;  b = 1 ; cin = 1 ;
    #10;
    $finish;
end 
endmodule

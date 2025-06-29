`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/30/2021 08:55:14 PM
// Design Name: 
// Module Name: hexTo7Segment
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


module hexTo7Segment(
    output reg [6:0] segments,
    input [7:0] char
    );
    
always @(char) begin
    case (char)
            8'b01000001: segments = 7'b0100000; //A
            8'b01000010: segments = 7'b0000011; //B
            8'b01000011: segments = 7'b0100111; //C
            8'b01000100: segments = 7'b0100001; //D
            8'b01000101: segments = 7'b0000110; //E
            8'b01000110: segments = 7'b0001110; //F
            8'b01000111: segments = 7'b1000010; //G
            8'b01001000: segments = 7'b0001011; //H
            8'b01001001: segments = 7'b1101110; //I
            8'b01001010: segments = 7'b1110010; //J
            8'b01001011: segments = 7'b0001010; //K
            8'b01001100: segments = 7'b1000111; //L
            8'b01001101: segments = 7'b0101010; //M
            8'b01001110: segments = 7'b0101011; //N
            8'b01001111: segments = 7'b0100011; //O
            8'b01010000: segments = 7'b0001100; //P
            8'b01010001: segments = 7'b0011000; //Q
            8'b01010010: segments = 7'b0101111; //R
            8'b01010011: segments = 7'b1010010; //S
            8'b01010100: segments = 7'b0000111; //T
            8'b01010101: segments = 7'b1100011; //U
            8'b01010110: segments = 7'b1010101; //V
            8'b01010111: segments = 7'b0010101; //W
            8'b01011000: segments = 7'b1101011; //X
            8'b01011001: segments = 7'b0010001; //Y
            8'b01011010: segments = 7'b1100100; //Z
            
            //numbers
            8'b00110000: segments = 7'b1000000; //0
            8'b00110001: segments = 7'b1111001; //1
            8'b00110010: segments = 7'b0100100; //2
            8'b00110011: segments = 7'b0110000; //3
            8'b00110100: segments = 7'b0011001; //4 
            8'b00110101: segments = 7'b0010010; //5
            8'b00110110: segments = 7'b0000010; //6
            8'b00110111: segments = 7'b1111000; //7
            8'b00111000: segments = 7'b0000000; //8
            8'b00111001: segments = 7'b0010000; //9

            //specials
            8'b00101110: segments = 7'b1101111; //.
            8'b00101100: segments = 7'b1110011; //,
            8'b00111011: segments = 7'b1110101; //;
            8'b00111010: segments = 7'b1110110; //:
            8'b00100001: segments = 7'b0010100; //!
            8'b00111111: segments = 7'b0110100; //?
            8'b00101011: segments = 7'b0111001; //+
            8'b00101101: segments = 7'b0111111; //-
            8'b00111101: segments = 7'b0110111; //=
            8'b00101010: segments = 7'b0110110; //*
            8'b00100011: segments = 7'b1001001; //#
            8'b00101111: segments = 7'b0101101; // /
            8'b01011100: segments = 7'b0011011; //\
            8'b10101111: segments = 7'b1111110; //¯
            8'b01011111: segments = 7'b1110111; //_
            8'b00101000: segments = 7'b1000110; //(
            8'b00101001: segments = 7'b1110000; //)
            8'b00100111: segments = 7'b1011111; //'
            8'b00100010: segments = 7'b1011101; //"
            8'b10110000: segments = 7'b0011100; //°
            8'b00111100: segments = 7'b1011110; //<
            8'b00111110: segments = 7'b1111100; //>
            8'b00100101: segments = 7'b1011011; //%
            8'b01000000: segments = 7'b1101000; //@
            
            default: segments = 7'b1111111; // turn all lights off
//        default: segments = 7'b1111111; // Default (all segments off)
    endcase
end

endmodule
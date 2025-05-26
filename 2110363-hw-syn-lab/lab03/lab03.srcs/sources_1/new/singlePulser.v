`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 01:00:34 PM
// Design Name: 
// Module Name: singlePulser
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


module singlePulser(
    output reg d,       // Single pulse output
    input pushed,       // Button or input signal
    input clk           // Clock signal
);
    
    reg state;          // State register to track the button status
    
    initial state = 0;
    
    always @(posedge clk) begin
        d <= 0;         // Default: No pulse generated
        
        case({pushed, state})
            2'b00: state <= 0;        // Button not pressed, state is 0
            2'b01: state <= 0;        // Button released, reset state to 0
            2'b10: begin              // Button pressed and state is 0 (rising edge)
                state <= 1;           // Set state to 1 (button pressed)
                d <= 1;               // Generate a pulse for one cycle
            end
            2'b11: state <= 1;        // Button pressed, but state is already 1 (no pulse)
        endcase
    end
endmodule

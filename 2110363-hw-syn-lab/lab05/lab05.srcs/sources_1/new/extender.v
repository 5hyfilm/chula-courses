`timescale 1ns / 1ns
//-------------------------------------------------------
// File name    : extender.v
// Title        : Extender.
// Library      : nanoLADA
// Purpose      : Computer Architecture
// Developers   : Krerk Piromsopa, Ph. D.
//              : Chulalongkorn University.

module extender(
    output reg [31:0] data32,
    input [15:0] data16,
    input [1:0] ext_ops
    );

    always@(ext_ops or data16) begin
        case(ext_ops)
            2'b01: data32 = {{16{data16[15]}},data16};
            2'b10: data32 = {data16,{16{1'b0}}};
            default: data32 = {{16{1'b0}},data16};
        endcase
    end

endmodule
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Sep 17 14:42:10 2024
// Host        : Oar-Stu0829 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab04/lab04.gen/sources_1/bd/system3/ip/system3_calculator_0_0/system3_calculator_0_0_stub.v
// Design      : system3_calculator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "calculator,Vivado 2024.1" *)
module system3_calculator_0_0(out, a, b, add, sub, multiply, devide, clear, clk)
/* synthesis syn_black_box black_box_pad_pin="out[15:0],a[3:0],b[3:0],add,sub,multiply,devide,clear" */
/* synthesis syn_force_seq_prim="clk" */;
  output [15:0]out;
  input [3:0]a;
  input [3:0]b;
  input add;
  input sub;
  input multiply;
  input devide;
  input clear;
  input clk /* synthesis syn_isclock = 1 */;
endmodule

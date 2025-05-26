// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Sep 17 14:41:03 2024
// Host        : Oar-Stu0829 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab04/lab04.gen/sources_1/bd/system3/ip/system3_clkDivide_0_0/system3_clkDivide_0_0_stub.v
// Design      : system3_clkDivide_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clkDivide,Vivado 2024.1" *)
module system3_clkDivide_0_0(fClk, clk, bit)
/* synthesis syn_black_box black_box_pad_pin="fClk,bit[4:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  output fClk;
  input clk /* synthesis syn_isclock = 1 */;
  input [4:0]bit;
endmodule

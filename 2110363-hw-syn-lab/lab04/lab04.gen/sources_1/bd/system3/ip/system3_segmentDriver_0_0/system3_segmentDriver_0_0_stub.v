// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Sep 17 14:41:03 2024
// Host        : Oar-Stu0829 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab04/lab04.gen/sources_1/bd/system3/ip/system3_segmentDriver_0_0/system3_segmentDriver_0_0_stub.v
// Design      : system3_segmentDriver_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "segmentDriver,Vivado 2024.1" *)
module system3_segmentDriver_0_0(seg, an, hex, fClk)
/* synthesis syn_black_box black_box_pad_pin="seg[6:0],an[3:0],hex[15:0]" */
/* synthesis syn_force_seq_prim="fClk" */;
  output [6:0]seg;
  output [3:0]an;
  input [15:0]hex;
  input fClk /* synthesis syn_isclock = 1 */;
endmodule

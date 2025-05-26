//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Tue Sep 17 15:55:51 2024
//Host        : Oar-Stu0829 running 64-bit major release  (build 9200)
//Command     : generate_target system3_wrapper.bd
//Design      : system3_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system3_wrapper
   (an,
    btnC,
    btnD,
    btnL,
    btnR,
    btnU,
    clk,
    seg,
    swA,
    swB);
  output [3:0]an;
  input btnC;
  input btnD;
  input btnL;
  input btnR;
  input btnU;
  input clk;
  output [6:0]seg;
  input [3:0]swA;
  input [3:0]swB;

  wire [3:0]an;
  wire btnC;
  wire btnD;
  wire btnL;
  wire btnR;
  wire btnU;
  wire clk;
  wire [6:0]seg;
  wire [3:0]swA;
  wire [3:0]swB;

  system3 system3_i
       (.an(an),
        .btnC(btnC),
        .btnD(btnD),
        .btnL(btnL),
        .btnR(btnR),
        .btnU(btnU),
        .clk(clk),
        .seg(seg),
        .swA(swA),
        .swB(swB));
endmodule

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Sep 17 14:41:03 2024
// Host        : Oar-Stu0829 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab04/lab04.gen/sources_1/bd/system3/ip/system3_segmentDriver_0_0/system3_segmentDriver_0_0_sim_netlist.v
// Design      : system3_segmentDriver_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system3_segmentDriver_0_0,segmentDriver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "segmentDriver,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module system3_segmentDriver_0_0
   (seg,
    an,
    hex,
    fClk);
  output [6:0]seg;
  output [3:0]an;
  input [15:0]hex;
  input fClk;

  wire [3:0]an;
  wire fClk;
  wire [15:0]hex;
  wire [6:0]seg;

  system3_segmentDriver_0_0_segmentDriver inst
       (.an(an),
        .fClk(fClk),
        .hex(hex),
        .seg(seg));
endmodule

(* ORIG_REF_NAME = "clkDivide" *) 
module system3_segmentDriver_0_0_clkDivide
   (f,
    fClk);
  output [0:0]f;
  input fClk;

  wire [0:0]f;
  wire fClk;
  wire f_1;
  wire f_10;
  wire f_11;
  wire f_12;
  wire f_13;
  wire f_14;
  wire f_15;
  wire f_16;
  wire f_17;
  wire f_18;
  wire f_2;
  wire f_3;
  wire f_4;
  wire f_5;
  wire f_6;
  wire f_7;
  wire f_8;
  wire f_9;

  system3_segmentDriver_0_0_flipflop \genblk1[10].ff 
       (.f_10(f_10),
        .f_9(f_9));
  system3_segmentDriver_0_0_flipflop_0 \genblk1[11].ff 
       (.f_10(f_10),
        .f_11(f_11));
  system3_segmentDriver_0_0_flipflop_1 \genblk1[12].ff 
       (.f_11(f_11),
        .f_12(f_12));
  system3_segmentDriver_0_0_flipflop_2 \genblk1[13].ff 
       (.f_12(f_12),
        .f_13(f_13));
  system3_segmentDriver_0_0_flipflop_3 \genblk1[14].ff 
       (.f_13(f_13),
        .f_14(f_14));
  system3_segmentDriver_0_0_flipflop_4 \genblk1[15].ff 
       (.f_14(f_14),
        .f_15(f_15));
  system3_segmentDriver_0_0_flipflop_5 \genblk1[16].ff 
       (.f_15(f_15),
        .f_16(f_16));
  system3_segmentDriver_0_0_flipflop_6 \genblk1[17].ff 
       (.f_16(f_16),
        .f_17(f_17));
  system3_segmentDriver_0_0_flipflop_7 \genblk1[18].ff 
       (.f_17(f_17),
        .f_18(f_18));
  system3_segmentDriver_0_0_flipflop_8 \genblk1[19].ff 
       (.f(f),
        .f_18(f_18));
  system3_segmentDriver_0_0_flipflop_9 \genblk1[1].ff 
       (.fClk(fClk),
        .f_1(f_1));
  system3_segmentDriver_0_0_flipflop_10 \genblk1[2].ff 
       (.f_1(f_1),
        .f_2(f_2));
  system3_segmentDriver_0_0_flipflop_11 \genblk1[3].ff 
       (.f_2(f_2),
        .f_3(f_3));
  system3_segmentDriver_0_0_flipflop_12 \genblk1[4].ff 
       (.f_3(f_3),
        .f_4(f_4));
  system3_segmentDriver_0_0_flipflop_13 \genblk1[5].ff 
       (.f_4(f_4),
        .f_5(f_5));
  system3_segmentDriver_0_0_flipflop_14 \genblk1[6].ff 
       (.f_5(f_5),
        .f_6(f_6));
  system3_segmentDriver_0_0_flipflop_15 \genblk1[7].ff 
       (.f_6(f_6),
        .f_7(f_7));
  system3_segmentDriver_0_0_flipflop_16 \genblk1[8].ff 
       (.f_7(f_7),
        .f_8(f_8));
  system3_segmentDriver_0_0_flipflop_17 \genblk1[9].ff 
       (.f_8(f_8),
        .f_9(f_9));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop
   (f_10,
    f_9);
  output f_10;
  input f_9;

  wire f_10;
  wire f_9;
  wire st_i_1__8_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__8
       (.I0(f_10),
        .O(st_i_1__8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_9),
        .CE(1'b1),
        .D(st_i_1__8_n_0),
        .Q(f_10),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_0
   (f_11,
    f_10);
  output f_11;
  input f_10;

  wire f_10;
  wire f_11;
  wire st_i_1__9_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__9
       (.I0(f_11),
        .O(st_i_1__9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_10),
        .CE(1'b1),
        .D(st_i_1__9_n_0),
        .Q(f_11),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_1
   (f_12,
    f_11);
  output f_12;
  input f_11;

  wire f_11;
  wire f_12;
  wire st_i_1__10_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__10
       (.I0(f_12),
        .O(st_i_1__10_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_11),
        .CE(1'b1),
        .D(st_i_1__10_n_0),
        .Q(f_12),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_10
   (f_2,
    f_1);
  output f_2;
  input f_1;

  wire f_1;
  wire f_2;
  wire st_i_1__0_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__0
       (.I0(f_2),
        .O(st_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_1),
        .CE(1'b1),
        .D(st_i_1__0_n_0),
        .Q(f_2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_11
   (f_3,
    f_2);
  output f_3;
  input f_2;

  wire f_2;
  wire f_3;
  wire st_i_1__1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__1
       (.I0(f_3),
        .O(st_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_2),
        .CE(1'b1),
        .D(st_i_1__1_n_0),
        .Q(f_3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_12
   (f_4,
    f_3);
  output f_4;
  input f_3;

  wire f_3;
  wire f_4;
  wire st_i_1__2_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__2
       (.I0(f_4),
        .O(st_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_3),
        .CE(1'b1),
        .D(st_i_1__2_n_0),
        .Q(f_4),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_13
   (f_5,
    f_4);
  output f_5;
  input f_4;

  wire f_4;
  wire f_5;
  wire st_i_1__3_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__3
       (.I0(f_5),
        .O(st_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_4),
        .CE(1'b1),
        .D(st_i_1__3_n_0),
        .Q(f_5),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_14
   (f_6,
    f_5);
  output f_6;
  input f_5;

  wire f_5;
  wire f_6;
  wire st_i_1__4_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__4
       (.I0(f_6),
        .O(st_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_5),
        .CE(1'b1),
        .D(st_i_1__4_n_0),
        .Q(f_6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_15
   (f_7,
    f_6);
  output f_7;
  input f_6;

  wire f_6;
  wire f_7;
  wire st_i_1__5_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__5
       (.I0(f_7),
        .O(st_i_1__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_6),
        .CE(1'b1),
        .D(st_i_1__5_n_0),
        .Q(f_7),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_16
   (f_8,
    f_7);
  output f_8;
  input f_7;

  wire f_7;
  wire f_8;
  wire st_i_1__6_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__6
       (.I0(f_8),
        .O(st_i_1__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_7),
        .CE(1'b1),
        .D(st_i_1__6_n_0),
        .Q(f_8),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_17
   (f_9,
    f_8);
  output f_9;
  input f_8;

  wire f_8;
  wire f_9;
  wire st_i_1__7_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__7
       (.I0(f_9),
        .O(st_i_1__7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_8),
        .CE(1'b1),
        .D(st_i_1__7_n_0),
        .Q(f_9),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_2
   (f_13,
    f_12);
  output f_13;
  input f_12;

  wire f_12;
  wire f_13;
  wire st_i_1__11_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__11
       (.I0(f_13),
        .O(st_i_1__11_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_12),
        .CE(1'b1),
        .D(st_i_1__11_n_0),
        .Q(f_13),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_3
   (f_14,
    f_13);
  output f_14;
  input f_13;

  wire f_13;
  wire f_14;
  wire st_i_1__12_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__12
       (.I0(f_14),
        .O(st_i_1__12_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_13),
        .CE(1'b1),
        .D(st_i_1__12_n_0),
        .Q(f_14),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_4
   (f_15,
    f_14);
  output f_15;
  input f_14;

  wire f_14;
  wire f_15;
  wire st_i_1__13_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__13
       (.I0(f_15),
        .O(st_i_1__13_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_14),
        .CE(1'b1),
        .D(st_i_1__13_n_0),
        .Q(f_15),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_5
   (f_16,
    f_15);
  output f_16;
  input f_15;

  wire f_15;
  wire f_16;
  wire st_i_1__14_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__14
       (.I0(f_16),
        .O(st_i_1__14_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_15),
        .CE(1'b1),
        .D(st_i_1__14_n_0),
        .Q(f_16),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_6
   (f_17,
    f_16);
  output f_17;
  input f_16;

  wire f_16;
  wire f_17;
  wire st_i_1__15_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__15
       (.I0(f_17),
        .O(st_i_1__15_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_16),
        .CE(1'b1),
        .D(st_i_1__15_n_0),
        .Q(f_17),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_7
   (f_18,
    f_17);
  output f_18;
  input f_17;

  wire f_17;
  wire f_18;
  wire st_i_1__16_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__16
       (.I0(f_18),
        .O(st_i_1__16_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_17),
        .CE(1'b1),
        .D(st_i_1__16_n_0),
        .Q(f_18),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_8
   (f,
    f_18);
  output [0:0]f;
  input f_18;

  wire [0:0]f;
  wire f_18;
  wire st_i_1__17_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__17
       (.I0(f),
        .O(st_i_1__17_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_18),
        .CE(1'b1),
        .D(st_i_1__17_n_0),
        .Q(f),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_segmentDriver_0_0_flipflop_9
   (f_1,
    fClk);
  output f_1;
  input fClk;

  wire fClk;
  wire f_1;
  wire qd;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1
       (.I0(f_1),
        .O(qd));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(fClk),
        .CE(1'b1),
        .D(qd),
        .Q(f_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "segmentDriver" *) 
module system3_segmentDriver_0_0_segmentDriver
   (an,
    seg,
    fClk,
    hex);
  output [3:0]an;
  output [6:0]seg;
  input fClk;
  input [15:0]hex;

  wire [3:0]an;
  wire fClk;
  wire f_19;
  wire [15:0]hex;
  wire [1:0]p_0_in;
  wire [1:0]pos;
  wire [6:0]seg;
  wire [3:0]sel0;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an[0]_INST_0 
       (.I0(pos[1]),
        .I1(pos[0]),
        .O(an[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[1]_INST_0 
       (.I0(pos[1]),
        .I1(pos[0]),
        .O(an[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an[2]_INST_0 
       (.I0(pos[0]),
        .I1(pos[1]),
        .O(an[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an[3]_INST_0 
       (.I0(pos[1]),
        .I1(pos[0]),
        .O(an[3]));
  system3_segmentDriver_0_0_clkDivide cd
       (.f(f_19),
        .fClk(fClk));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \pos[0]_i_1 
       (.I0(pos[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pos[1]_i_1 
       (.I0(pos[0]),
        .I1(pos[1]),
        .O(p_0_in[1]));
  FDRE #(
    .INIT(1'b0)) 
    \pos_reg[0] 
       (.C(f_19),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(pos[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pos_reg[1] 
       (.C(f_19),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(pos[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg[0]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg[1]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(seg[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg[2]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(seg[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg[3]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \seg[4]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(seg[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg[5]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg[6]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(seg[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg[6]_INST_0_i_1 
       (.I0(hex[7]),
        .I1(hex[3]),
        .I2(hex[15]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(hex[11]),
        .O(sel0[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg[6]_INST_0_i_2 
       (.I0(hex[4]),
        .I1(hex[0]),
        .I2(hex[12]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(hex[8]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg[6]_INST_0_i_3 
       (.I0(hex[6]),
        .I1(hex[2]),
        .I2(hex[14]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(hex[10]),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg[6]_INST_0_i_4 
       (.I0(hex[5]),
        .I1(hex[1]),
        .I2(hex[13]),
        .I3(pos[1]),
        .I4(pos[0]),
        .I5(hex[9]),
        .O(sel0[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

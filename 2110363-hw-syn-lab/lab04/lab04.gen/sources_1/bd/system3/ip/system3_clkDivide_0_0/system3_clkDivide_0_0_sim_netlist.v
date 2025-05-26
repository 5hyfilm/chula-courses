// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Sep 17 14:41:03 2024
// Host        : Oar-Stu0829 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab04/lab04.gen/sources_1/bd/system3/ip/system3_clkDivide_0_0/system3_clkDivide_0_0_sim_netlist.v
// Design      : system3_clkDivide_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system3_clkDivide_0_0,clkDivide,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "clkDivide,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module system3_clkDivide_0_0
   (fClk,
    clk,
    bit);
  output fClk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input [4:0]bit;

  wire [4:0]bit;
  wire clk;
  wire fClk;

  system3_clkDivide_0_0_clkDivide inst
       (.bit(bit),
        .clk(clk),
        .fClk(fClk));
endmodule

(* ORIG_REF_NAME = "clkDivide" *) 
module system3_clkDivide_0_0_clkDivide
   (fClk,
    clk,
    bit);
  output fClk;
  input clk;
  input [4:0]bit;

  wire [4:0]bit;
  wire clk;
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
  wire f_19;
  wire f_2;
  wire f_20;
  wire f_3;
  wire f_4;
  wire f_5;
  wire f_6;
  wire f_7;
  wire f_8;
  wire f_9;
  wire \genblk1[11].ff_n_1 ;
  wire \genblk1[15].ff_n_1 ;
  wire \genblk1[21].ff_n_0 ;
  wire \genblk1[3].ff_n_1 ;
  wire \genblk1[7].ff_n_1 ;

  system3_clkDivide_0_0_flipflop \genblk1[10].ff 
       (.f_10(f_10),
        .f_9(f_9));
  system3_clkDivide_0_0_flipflop_0 \genblk1[11].ff 
       (.bit(bit[2:0]),
        .bit_2_sp_1(\genblk1[11].ff_n_1 ),
        .fClk(\genblk1[15].ff_n_1 ),
        .f_10(f_10),
        .f_11(f_11),
        .f_8(f_8),
        .f_9(f_9));
  system3_clkDivide_0_0_flipflop_1 \genblk1[12].ff 
       (.f_11(f_11),
        .f_12(f_12));
  system3_clkDivide_0_0_flipflop_2 \genblk1[13].ff 
       (.f_12(f_12),
        .f_13(f_13));
  system3_clkDivide_0_0_flipflop_3 \genblk1[14].ff 
       (.f_13(f_13),
        .f_14(f_14));
  system3_clkDivide_0_0_flipflop_4 \genblk1[15].ff 
       (.bit(bit[1:0]),
        .f_12(f_12),
        .f_13(f_13),
        .f_14(f_14),
        .f_15(f_15),
        .st_reg_0(\genblk1[15].ff_n_1 ));
  system3_clkDivide_0_0_flipflop_5 \genblk1[16].ff 
       (.f_15(f_15),
        .f_16(f_16));
  system3_clkDivide_0_0_flipflop_6 \genblk1[17].ff 
       (.f_16(f_16),
        .f_17(f_17));
  system3_clkDivide_0_0_flipflop_7 \genblk1[18].ff 
       (.f_17(f_17),
        .f_18(f_18));
  system3_clkDivide_0_0_flipflop_8 \genblk1[19].ff 
       (.bit(bit),
        .fClk(fClk),
        .fClk_0(\genblk1[11].ff_n_1 ),
        .fClk_1(\genblk1[3].ff_n_1 ),
        .fClk_2(\genblk1[21].ff_n_0 ),
        .f_16(f_16),
        .f_17(f_17),
        .f_18(f_18),
        .f_19(f_19));
  system3_clkDivide_0_0_flipflop_9 \genblk1[1].ff 
       (.clk(clk),
        .f_1(f_1));
  system3_clkDivide_0_0_flipflop_10 \genblk1[20].ff 
       (.f_19(f_19),
        .f_20(f_20));
  system3_clkDivide_0_0_flipflop_11 \genblk1[21].ff 
       (.bit(bit[0]),
        .f_20(f_20),
        .st_reg_0(\genblk1[21].ff_n_0 ));
  system3_clkDivide_0_0_flipflop_12 \genblk1[2].ff 
       (.f_1(f_1),
        .f_2(f_2));
  system3_clkDivide_0_0_flipflop_13 \genblk1[3].ff 
       (.bit(bit[2:0]),
        .bit_2_sp_1(\genblk1[3].ff_n_1 ),
        .clk(clk),
        .fClk(\genblk1[7].ff_n_1 ),
        .f_1(f_1),
        .f_2(f_2),
        .f_3(f_3));
  system3_clkDivide_0_0_flipflop_14 \genblk1[4].ff 
       (.f_3(f_3),
        .f_4(f_4));
  system3_clkDivide_0_0_flipflop_15 \genblk1[5].ff 
       (.f_4(f_4),
        .f_5(f_5));
  system3_clkDivide_0_0_flipflop_16 \genblk1[6].ff 
       (.f_5(f_5),
        .f_6(f_6));
  system3_clkDivide_0_0_flipflop_17 \genblk1[7].ff 
       (.bit(bit[1:0]),
        .f_4(f_4),
        .f_5(f_5),
        .f_6(f_6),
        .f_7(f_7),
        .st_reg_0(\genblk1[7].ff_n_1 ));
  system3_clkDivide_0_0_flipflop_18 \genblk1[8].ff 
       (.f_7(f_7),
        .f_8(f_8));
  system3_clkDivide_0_0_flipflop_19 \genblk1[9].ff 
       (.f_8(f_8),
        .f_9(f_9));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_clkDivide_0_0_flipflop
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
module system3_clkDivide_0_0_flipflop_0
   (f_11,
    bit_2_sp_1,
    f_10,
    bit,
    fClk,
    f_9,
    f_8);
  output f_11;
  output bit_2_sp_1;
  input f_10;
  input [2:0]bit;
  input fClk;
  input f_9;
  input f_8;

  wire [2:0]bit;
  wire bit_2_sn_1;
  wire fClk;
  wire fClk_INST_0_i_6_n_0;
  wire f_10;
  wire f_11;
  wire f_8;
  wire f_9;
  wire st_i_1__9_n_0;

  assign bit_2_sp_1 = bit_2_sn_1;
  MUXF7 fClk_INST_0_i_2
       (.I0(fClk_INST_0_i_6_n_0),
        .I1(fClk),
        .O(bit_2_sn_1),
        .S(bit[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fClk_INST_0_i_6
       (.I0(f_11),
        .I1(f_10),
        .I2(bit[1]),
        .I3(f_9),
        .I4(bit[0]),
        .I5(f_8),
        .O(fClk_INST_0_i_6_n_0));
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
module system3_clkDivide_0_0_flipflop_1
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
module system3_clkDivide_0_0_flipflop_10
   (f_20,
    f_19);
  output f_20;
  input f_19;

  wire f_19;
  wire f_20;
  wire st_i_1__18_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__18
       (.I0(f_20),
        .O(st_i_1__18_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_19),
        .CE(1'b1),
        .D(st_i_1__18_n_0),
        .Q(f_20),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_clkDivide_0_0_flipflop_11
   (st_reg_0,
    f_20,
    bit);
  output st_reg_0;
  input f_20;
  input [0:0]bit;

  wire [0:0]bit;
  wire f_20;
  wire st_i_1__19_n_0;
  wire st_reg_0;
  wire st_reg_n_0;

  LUT3 #(
    .INIT(8'hB8)) 
    fClk_INST_0_i_5
       (.I0(st_reg_n_0),
        .I1(bit),
        .I2(f_20),
        .O(st_reg_0));
  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__19
       (.I0(st_reg_n_0),
        .O(st_i_1__19_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_20),
        .CE(1'b1),
        .D(st_i_1__19_n_0),
        .Q(st_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_clkDivide_0_0_flipflop_12
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
module system3_clkDivide_0_0_flipflop_13
   (f_3,
    bit_2_sp_1,
    f_2,
    bit,
    fClk,
    f_1,
    clk);
  output f_3;
  output bit_2_sp_1;
  input f_2;
  input [2:0]bit;
  input fClk;
  input f_1;
  input clk;

  wire [2:0]bit;
  wire bit_2_sn_1;
  wire clk;
  wire fClk;
  wire fClk_INST_0_i_8_n_0;
  wire f_1;
  wire f_2;
  wire f_3;
  wire st_i_1__1_n_0;

  assign bit_2_sp_1 = bit_2_sn_1;
  MUXF7 fClk_INST_0_i_3
       (.I0(fClk_INST_0_i_8_n_0),
        .I1(fClk),
        .O(bit_2_sn_1),
        .S(bit[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fClk_INST_0_i_8
       (.I0(f_3),
        .I1(f_2),
        .I2(bit[1]),
        .I3(f_1),
        .I4(bit[0]),
        .I5(clk),
        .O(fClk_INST_0_i_8_n_0));
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
module system3_clkDivide_0_0_flipflop_14
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
module system3_clkDivide_0_0_flipflop_15
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
module system3_clkDivide_0_0_flipflop_16
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
module system3_clkDivide_0_0_flipflop_17
   (f_7,
    st_reg_0,
    f_6,
    bit,
    f_5,
    f_4);
  output f_7;
  output st_reg_0;
  input f_6;
  input [1:0]bit;
  input f_5;
  input f_4;

  wire [1:0]bit;
  wire f_4;
  wire f_5;
  wire f_6;
  wire f_7;
  wire st_i_1__5_n_0;
  wire st_reg_0;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fClk_INST_0_i_9
       (.I0(f_7),
        .I1(f_6),
        .I2(bit[1]),
        .I3(f_5),
        .I4(bit[0]),
        .I5(f_4),
        .O(st_reg_0));
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
module system3_clkDivide_0_0_flipflop_18
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
module system3_clkDivide_0_0_flipflop_19
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
module system3_clkDivide_0_0_flipflop_2
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
module system3_clkDivide_0_0_flipflop_3
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
module system3_clkDivide_0_0_flipflop_4
   (f_15,
    st_reg_0,
    f_14,
    bit,
    f_13,
    f_12);
  output f_15;
  output st_reg_0;
  input f_14;
  input [1:0]bit;
  input f_13;
  input f_12;

  wire [1:0]bit;
  wire f_12;
  wire f_13;
  wire f_14;
  wire f_15;
  wire st_i_1__13_n_0;
  wire st_reg_0;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fClk_INST_0_i_7
       (.I0(f_15),
        .I1(f_14),
        .I2(bit[1]),
        .I3(f_13),
        .I4(bit[0]),
        .I5(f_12),
        .O(st_reg_0));
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
module system3_clkDivide_0_0_flipflop_5
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
module system3_clkDivide_0_0_flipflop_6
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
module system3_clkDivide_0_0_flipflop_7
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
module system3_clkDivide_0_0_flipflop_8
   (f_19,
    fClk,
    f_18,
    bit,
    fClk_0,
    fClk_1,
    fClk_2,
    f_17,
    f_16);
  output f_19;
  output fClk;
  input f_18;
  input [4:0]bit;
  input fClk_0;
  input fClk_1;
  input fClk_2;
  input f_17;
  input f_16;

  wire [4:0]bit;
  wire fClk;
  wire fClk_0;
  wire fClk_1;
  wire fClk_2;
  wire fClk_INST_0_i_1_n_0;
  wire fClk_INST_0_i_4_n_0;
  wire f_16;
  wire f_17;
  wire f_18;
  wire f_19;
  wire st_i_1__17_n_0;

  LUT5 #(
    .INIT(32'hB8BBB888)) 
    fClk_INST_0
       (.I0(fClk_INST_0_i_1_n_0),
        .I1(bit[4]),
        .I2(fClk_0),
        .I3(bit[3]),
        .I4(fClk_1),
        .O(fClk));
  MUXF7 fClk_INST_0_i_1
       (.I0(fClk_INST_0_i_4_n_0),
        .I1(fClk_2),
        .O(fClk_INST_0_i_1_n_0),
        .S(bit[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    fClk_INST_0_i_4
       (.I0(f_19),
        .I1(f_18),
        .I2(bit[1]),
        .I3(f_17),
        .I4(bit[0]),
        .I5(f_16),
        .O(fClk_INST_0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    st_i_1__17
       (.I0(f_19),
        .O(st_i_1__17_n_0));
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(f_18),
        .CE(1'b1),
        .D(st_i_1__17_n_0),
        .Q(f_19),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "flipflop" *) 
module system3_clkDivide_0_0_flipflop_9
   (f_1,
    clk);
  output f_1;
  input clk;

  wire clk;
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
       (.C(clk),
        .CE(1'b1),
        .D(qd),
        .Q(f_1),
        .R(1'b0));
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

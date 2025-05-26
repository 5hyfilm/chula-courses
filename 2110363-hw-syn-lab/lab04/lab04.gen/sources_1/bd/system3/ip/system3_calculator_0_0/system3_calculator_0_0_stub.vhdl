-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Sep 17 14:42:10 2024
-- Host        : Oar-Stu0829 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab04/lab04.gen/sources_1/bd/system3/ip/system3_calculator_0_0/system3_calculator_0_0_stub.vhdl
-- Design      : system3_calculator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system3_calculator_0_0 is
  Port ( 
    \out\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    b : in STD_LOGIC_VECTOR ( 3 downto 0 );
    add : in STD_LOGIC;
    sub : in STD_LOGIC;
    multiply : in STD_LOGIC;
    devide : in STD_LOGIC;
    clear : in STD_LOGIC;
    clk : in STD_LOGIC
  );

end system3_calculator_0_0;

architecture stub of system3_calculator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "\out\[15:0],a[3:0],b[3:0],add,sub,multiply,devide,clear,clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "calculator,Vivado 2024.1";
begin
end;

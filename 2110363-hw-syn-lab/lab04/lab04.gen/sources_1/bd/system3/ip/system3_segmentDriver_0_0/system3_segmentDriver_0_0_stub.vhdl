-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Sep 17 14:41:03 2024
-- Host        : Oar-Stu0829 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab04/lab04.gen/sources_1/bd/system3/ip/system3_segmentDriver_0_0/system3_segmentDriver_0_0_stub.vhdl
-- Design      : system3_segmentDriver_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system3_segmentDriver_0_0 is
  Port ( 
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hex : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fClk : in STD_LOGIC
  );

end system3_segmentDriver_0_0;

architecture stub of system3_segmentDriver_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "seg[6:0],an[3:0],hex[15:0],fClk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "segmentDriver,Vivado 2024.1";
begin
end;

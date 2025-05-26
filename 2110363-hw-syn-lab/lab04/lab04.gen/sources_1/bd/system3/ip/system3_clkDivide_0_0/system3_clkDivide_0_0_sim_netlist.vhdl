-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Tue Sep 17 14:41:03 2024
-- Host        : Oar-Stu0829 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab04/lab04.gen/sources_1/bd/system3/ip/system3_clkDivide_0_0/system3_clkDivide_0_0_sim_netlist.vhdl
-- Design      : system3_clkDivide_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop is
  port (
    f_10 : out STD_LOGIC;
    f_9 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop : entity is "flipflop";
end system3_clkDivide_0_0_flipflop;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop is
  signal \^f_10\ : STD_LOGIC;
  signal \st_i_1__8_n_0\ : STD_LOGIC;
begin
  f_10 <= \^f_10\;
\st_i_1__8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_10\,
      O => \st_i_1__8_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_9,
      CE => '1',
      D => \st_i_1__8_n_0\,
      Q => \^f_10\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_0 is
  port (
    f_11 : out STD_LOGIC;
    bit_2_sp_1 : out STD_LOGIC;
    f_10 : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fClk : in STD_LOGIC;
    f_9 : in STD_LOGIC;
    f_8 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_0 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_0;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_0 is
  signal bit_2_sn_1 : STD_LOGIC;
  signal fClk_INST_0_i_6_n_0 : STD_LOGIC;
  signal \^f_11\ : STD_LOGIC;
  signal \st_i_1__9_n_0\ : STD_LOGIC;
begin
  bit_2_sp_1 <= bit_2_sn_1;
  f_11 <= \^f_11\;
fClk_INST_0_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => fClk_INST_0_i_6_n_0,
      I1 => fClk,
      O => bit_2_sn_1,
      S => bit(2)
    );
fClk_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^f_11\,
      I1 => f_10,
      I2 => bit(1),
      I3 => f_9,
      I4 => bit(0),
      I5 => f_8,
      O => fClk_INST_0_i_6_n_0
    );
\st_i_1__9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_11\,
      O => \st_i_1__9_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_10,
      CE => '1',
      D => \st_i_1__9_n_0\,
      Q => \^f_11\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_1 is
  port (
    f_12 : out STD_LOGIC;
    f_11 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_1 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_1;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_1 is
  signal \^f_12\ : STD_LOGIC;
  signal \st_i_1__10_n_0\ : STD_LOGIC;
begin
  f_12 <= \^f_12\;
\st_i_1__10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_12\,
      O => \st_i_1__10_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_11,
      CE => '1',
      D => \st_i_1__10_n_0\,
      Q => \^f_12\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_10 is
  port (
    f_20 : out STD_LOGIC;
    f_19 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_10 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_10;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_10 is
  signal \^f_20\ : STD_LOGIC;
  signal \st_i_1__18_n_0\ : STD_LOGIC;
begin
  f_20 <= \^f_20\;
\st_i_1__18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_20\,
      O => \st_i_1__18_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_19,
      CE => '1',
      D => \st_i_1__18_n_0\,
      Q => \^f_20\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_11 is
  port (
    st_reg_0 : out STD_LOGIC;
    f_20 : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_11 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_11;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_11 is
  signal \st_i_1__19_n_0\ : STD_LOGIC;
  signal st_reg_n_0 : STD_LOGIC;
begin
fClk_INST_0_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => st_reg_n_0,
      I1 => bit(0),
      I2 => f_20,
      O => st_reg_0
    );
\st_i_1__19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => st_reg_n_0,
      O => \st_i_1__19_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_20,
      CE => '1',
      D => \st_i_1__19_n_0\,
      Q => st_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_12 is
  port (
    f_2 : out STD_LOGIC;
    f_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_12 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_12;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_12 is
  signal \^f_2\ : STD_LOGIC;
  signal \st_i_1__0_n_0\ : STD_LOGIC;
begin
  f_2 <= \^f_2\;
\st_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_2\,
      O => \st_i_1__0_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_1,
      CE => '1',
      D => \st_i_1__0_n_0\,
      Q => \^f_2\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_13 is
  port (
    f_3 : out STD_LOGIC;
    bit_2_sp_1 : out STD_LOGIC;
    f_2 : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 2 downto 0 );
    fClk : in STD_LOGIC;
    f_1 : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_13 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_13;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_13 is
  signal bit_2_sn_1 : STD_LOGIC;
  signal fClk_INST_0_i_8_n_0 : STD_LOGIC;
  signal \^f_3\ : STD_LOGIC;
  signal \st_i_1__1_n_0\ : STD_LOGIC;
begin
  bit_2_sp_1 <= bit_2_sn_1;
  f_3 <= \^f_3\;
fClk_INST_0_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => fClk_INST_0_i_8_n_0,
      I1 => fClk,
      O => bit_2_sn_1,
      S => bit(2)
    );
fClk_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^f_3\,
      I1 => f_2,
      I2 => bit(1),
      I3 => f_1,
      I4 => bit(0),
      I5 => clk,
      O => fClk_INST_0_i_8_n_0
    );
\st_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_3\,
      O => \st_i_1__1_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_2,
      CE => '1',
      D => \st_i_1__1_n_0\,
      Q => \^f_3\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_14 is
  port (
    f_4 : out STD_LOGIC;
    f_3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_14 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_14;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_14 is
  signal \^f_4\ : STD_LOGIC;
  signal \st_i_1__2_n_0\ : STD_LOGIC;
begin
  f_4 <= \^f_4\;
\st_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_4\,
      O => \st_i_1__2_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_3,
      CE => '1',
      D => \st_i_1__2_n_0\,
      Q => \^f_4\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_15 is
  port (
    f_5 : out STD_LOGIC;
    f_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_15 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_15;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_15 is
  signal \^f_5\ : STD_LOGIC;
  signal \st_i_1__3_n_0\ : STD_LOGIC;
begin
  f_5 <= \^f_5\;
\st_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_5\,
      O => \st_i_1__3_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_4,
      CE => '1',
      D => \st_i_1__3_n_0\,
      Q => \^f_5\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_16 is
  port (
    f_6 : out STD_LOGIC;
    f_5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_16 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_16;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_16 is
  signal \^f_6\ : STD_LOGIC;
  signal \st_i_1__4_n_0\ : STD_LOGIC;
begin
  f_6 <= \^f_6\;
\st_i_1__4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_6\,
      O => \st_i_1__4_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_5,
      CE => '1',
      D => \st_i_1__4_n_0\,
      Q => \^f_6\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_17 is
  port (
    f_7 : out STD_LOGIC;
    st_reg_0 : out STD_LOGIC;
    f_6 : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 1 downto 0 );
    f_5 : in STD_LOGIC;
    f_4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_17 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_17;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_17 is
  signal \^f_7\ : STD_LOGIC;
  signal \st_i_1__5_n_0\ : STD_LOGIC;
begin
  f_7 <= \^f_7\;
fClk_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^f_7\,
      I1 => f_6,
      I2 => bit(1),
      I3 => f_5,
      I4 => bit(0),
      I5 => f_4,
      O => st_reg_0
    );
\st_i_1__5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_7\,
      O => \st_i_1__5_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_6,
      CE => '1',
      D => \st_i_1__5_n_0\,
      Q => \^f_7\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_18 is
  port (
    f_8 : out STD_LOGIC;
    f_7 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_18 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_18;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_18 is
  signal \^f_8\ : STD_LOGIC;
  signal \st_i_1__6_n_0\ : STD_LOGIC;
begin
  f_8 <= \^f_8\;
\st_i_1__6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_8\,
      O => \st_i_1__6_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_7,
      CE => '1',
      D => \st_i_1__6_n_0\,
      Q => \^f_8\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_19 is
  port (
    f_9 : out STD_LOGIC;
    f_8 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_19 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_19;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_19 is
  signal \^f_9\ : STD_LOGIC;
  signal \st_i_1__7_n_0\ : STD_LOGIC;
begin
  f_9 <= \^f_9\;
\st_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_9\,
      O => \st_i_1__7_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_8,
      CE => '1',
      D => \st_i_1__7_n_0\,
      Q => \^f_9\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_2 is
  port (
    f_13 : out STD_LOGIC;
    f_12 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_2 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_2;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_2 is
  signal \^f_13\ : STD_LOGIC;
  signal \st_i_1__11_n_0\ : STD_LOGIC;
begin
  f_13 <= \^f_13\;
\st_i_1__11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_13\,
      O => \st_i_1__11_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_12,
      CE => '1',
      D => \st_i_1__11_n_0\,
      Q => \^f_13\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_3 is
  port (
    f_14 : out STD_LOGIC;
    f_13 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_3 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_3;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_3 is
  signal \^f_14\ : STD_LOGIC;
  signal \st_i_1__12_n_0\ : STD_LOGIC;
begin
  f_14 <= \^f_14\;
\st_i_1__12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_14\,
      O => \st_i_1__12_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_13,
      CE => '1',
      D => \st_i_1__12_n_0\,
      Q => \^f_14\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_4 is
  port (
    f_15 : out STD_LOGIC;
    st_reg_0 : out STD_LOGIC;
    f_14 : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 1 downto 0 );
    f_13 : in STD_LOGIC;
    f_12 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_4 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_4;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_4 is
  signal \^f_15\ : STD_LOGIC;
  signal \st_i_1__13_n_0\ : STD_LOGIC;
begin
  f_15 <= \^f_15\;
fClk_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^f_15\,
      I1 => f_14,
      I2 => bit(1),
      I3 => f_13,
      I4 => bit(0),
      I5 => f_12,
      O => st_reg_0
    );
\st_i_1__13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_15\,
      O => \st_i_1__13_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_14,
      CE => '1',
      D => \st_i_1__13_n_0\,
      Q => \^f_15\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_5 is
  port (
    f_16 : out STD_LOGIC;
    f_15 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_5 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_5;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_5 is
  signal \^f_16\ : STD_LOGIC;
  signal \st_i_1__14_n_0\ : STD_LOGIC;
begin
  f_16 <= \^f_16\;
\st_i_1__14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_16\,
      O => \st_i_1__14_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_15,
      CE => '1',
      D => \st_i_1__14_n_0\,
      Q => \^f_16\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_6 is
  port (
    f_17 : out STD_LOGIC;
    f_16 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_6 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_6;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_6 is
  signal \^f_17\ : STD_LOGIC;
  signal \st_i_1__15_n_0\ : STD_LOGIC;
begin
  f_17 <= \^f_17\;
\st_i_1__15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_17\,
      O => \st_i_1__15_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_16,
      CE => '1',
      D => \st_i_1__15_n_0\,
      Q => \^f_17\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_7 is
  port (
    f_18 : out STD_LOGIC;
    f_17 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_7 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_7;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_7 is
  signal \^f_18\ : STD_LOGIC;
  signal \st_i_1__16_n_0\ : STD_LOGIC;
begin
  f_18 <= \^f_18\;
\st_i_1__16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_18\,
      O => \st_i_1__16_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_17,
      CE => '1',
      D => \st_i_1__16_n_0\,
      Q => \^f_18\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_8 is
  port (
    f_19 : out STD_LOGIC;
    fClk : out STD_LOGIC;
    f_18 : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 4 downto 0 );
    fClk_0 : in STD_LOGIC;
    fClk_1 : in STD_LOGIC;
    fClk_2 : in STD_LOGIC;
    f_17 : in STD_LOGIC;
    f_16 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_8 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_8;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_8 is
  signal fClk_INST_0_i_1_n_0 : STD_LOGIC;
  signal fClk_INST_0_i_4_n_0 : STD_LOGIC;
  signal \^f_19\ : STD_LOGIC;
  signal \st_i_1__17_n_0\ : STD_LOGIC;
begin
  f_19 <= \^f_19\;
fClk_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => fClk_INST_0_i_1_n_0,
      I1 => bit(4),
      I2 => fClk_0,
      I3 => bit(3),
      I4 => fClk_1,
      O => fClk
    );
fClk_INST_0_i_1: unisim.vcomponents.MUXF7
     port map (
      I0 => fClk_INST_0_i_4_n_0,
      I1 => fClk_2,
      O => fClk_INST_0_i_1_n_0,
      S => bit(2)
    );
fClk_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^f_19\,
      I1 => f_18,
      I2 => bit(1),
      I3 => f_17,
      I4 => bit(0),
      I5 => f_16,
      O => fClk_INST_0_i_4_n_0
    );
\st_i_1__17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_19\,
      O => \st_i_1__17_n_0\
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => f_18,
      CE => '1',
      D => \st_i_1__17_n_0\,
      Q => \^f_19\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_flipflop_9 is
  port (
    f_1 : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_flipflop_9 : entity is "flipflop";
end system3_clkDivide_0_0_flipflop_9;

architecture STRUCTURE of system3_clkDivide_0_0_flipflop_9 is
  signal \^f_1\ : STD_LOGIC;
  signal qd : STD_LOGIC;
begin
  f_1 <= \^f_1\;
st_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^f_1\,
      O => qd
    );
st_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => qd,
      Q => \^f_1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0_clkDivide is
  port (
    fClk : out STD_LOGIC;
    clk : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system3_clkDivide_0_0_clkDivide : entity is "clkDivide";
end system3_clkDivide_0_0_clkDivide;

architecture STRUCTURE of system3_clkDivide_0_0_clkDivide is
  signal f_1 : STD_LOGIC;
  signal f_10 : STD_LOGIC;
  signal f_11 : STD_LOGIC;
  signal f_12 : STD_LOGIC;
  signal f_13 : STD_LOGIC;
  signal f_14 : STD_LOGIC;
  signal f_15 : STD_LOGIC;
  signal f_16 : STD_LOGIC;
  signal f_17 : STD_LOGIC;
  signal f_18 : STD_LOGIC;
  signal f_19 : STD_LOGIC;
  signal f_2 : STD_LOGIC;
  signal f_20 : STD_LOGIC;
  signal f_3 : STD_LOGIC;
  signal f_4 : STD_LOGIC;
  signal f_5 : STD_LOGIC;
  signal f_6 : STD_LOGIC;
  signal f_7 : STD_LOGIC;
  signal f_8 : STD_LOGIC;
  signal f_9 : STD_LOGIC;
  signal \genblk1[11].ff_n_1\ : STD_LOGIC;
  signal \genblk1[15].ff_n_1\ : STD_LOGIC;
  signal \genblk1[21].ff_n_0\ : STD_LOGIC;
  signal \genblk1[3].ff_n_1\ : STD_LOGIC;
  signal \genblk1[7].ff_n_1\ : STD_LOGIC;
begin
\genblk1[10].ff\: entity work.system3_clkDivide_0_0_flipflop
     port map (
      f_10 => f_10,
      f_9 => f_9
    );
\genblk1[11].ff\: entity work.system3_clkDivide_0_0_flipflop_0
     port map (
      bit(2 downto 0) => bit(2 downto 0),
      bit_2_sp_1 => \genblk1[11].ff_n_1\,
      fClk => \genblk1[15].ff_n_1\,
      f_10 => f_10,
      f_11 => f_11,
      f_8 => f_8,
      f_9 => f_9
    );
\genblk1[12].ff\: entity work.system3_clkDivide_0_0_flipflop_1
     port map (
      f_11 => f_11,
      f_12 => f_12
    );
\genblk1[13].ff\: entity work.system3_clkDivide_0_0_flipflop_2
     port map (
      f_12 => f_12,
      f_13 => f_13
    );
\genblk1[14].ff\: entity work.system3_clkDivide_0_0_flipflop_3
     port map (
      f_13 => f_13,
      f_14 => f_14
    );
\genblk1[15].ff\: entity work.system3_clkDivide_0_0_flipflop_4
     port map (
      bit(1 downto 0) => bit(1 downto 0),
      f_12 => f_12,
      f_13 => f_13,
      f_14 => f_14,
      f_15 => f_15,
      st_reg_0 => \genblk1[15].ff_n_1\
    );
\genblk1[16].ff\: entity work.system3_clkDivide_0_0_flipflop_5
     port map (
      f_15 => f_15,
      f_16 => f_16
    );
\genblk1[17].ff\: entity work.system3_clkDivide_0_0_flipflop_6
     port map (
      f_16 => f_16,
      f_17 => f_17
    );
\genblk1[18].ff\: entity work.system3_clkDivide_0_0_flipflop_7
     port map (
      f_17 => f_17,
      f_18 => f_18
    );
\genblk1[19].ff\: entity work.system3_clkDivide_0_0_flipflop_8
     port map (
      bit(4 downto 0) => bit(4 downto 0),
      fClk => fClk,
      fClk_0 => \genblk1[11].ff_n_1\,
      fClk_1 => \genblk1[3].ff_n_1\,
      fClk_2 => \genblk1[21].ff_n_0\,
      f_16 => f_16,
      f_17 => f_17,
      f_18 => f_18,
      f_19 => f_19
    );
\genblk1[1].ff\: entity work.system3_clkDivide_0_0_flipflop_9
     port map (
      clk => clk,
      f_1 => f_1
    );
\genblk1[20].ff\: entity work.system3_clkDivide_0_0_flipflop_10
     port map (
      f_19 => f_19,
      f_20 => f_20
    );
\genblk1[21].ff\: entity work.system3_clkDivide_0_0_flipflop_11
     port map (
      bit(0) => bit(0),
      f_20 => f_20,
      st_reg_0 => \genblk1[21].ff_n_0\
    );
\genblk1[2].ff\: entity work.system3_clkDivide_0_0_flipflop_12
     port map (
      f_1 => f_1,
      f_2 => f_2
    );
\genblk1[3].ff\: entity work.system3_clkDivide_0_0_flipflop_13
     port map (
      bit(2 downto 0) => bit(2 downto 0),
      bit_2_sp_1 => \genblk1[3].ff_n_1\,
      clk => clk,
      fClk => \genblk1[7].ff_n_1\,
      f_1 => f_1,
      f_2 => f_2,
      f_3 => f_3
    );
\genblk1[4].ff\: entity work.system3_clkDivide_0_0_flipflop_14
     port map (
      f_3 => f_3,
      f_4 => f_4
    );
\genblk1[5].ff\: entity work.system3_clkDivide_0_0_flipflop_15
     port map (
      f_4 => f_4,
      f_5 => f_5
    );
\genblk1[6].ff\: entity work.system3_clkDivide_0_0_flipflop_16
     port map (
      f_5 => f_5,
      f_6 => f_6
    );
\genblk1[7].ff\: entity work.system3_clkDivide_0_0_flipflop_17
     port map (
      bit(1 downto 0) => bit(1 downto 0),
      f_4 => f_4,
      f_5 => f_5,
      f_6 => f_6,
      f_7 => f_7,
      st_reg_0 => \genblk1[7].ff_n_1\
    );
\genblk1[8].ff\: entity work.system3_clkDivide_0_0_flipflop_18
     port map (
      f_7 => f_7,
      f_8 => f_8
    );
\genblk1[9].ff\: entity work.system3_clkDivide_0_0_flipflop_19
     port map (
      f_8 => f_8,
      f_9 => f_9
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system3_clkDivide_0_0 is
  port (
    fClk : out STD_LOGIC;
    clk : in STD_LOGIC;
    bit : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system3_clkDivide_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system3_clkDivide_0_0 : entity is "system3_clkDivide_0_0,clkDivide,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system3_clkDivide_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system3_clkDivide_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system3_clkDivide_0_0 : entity is "clkDivide,Vivado 2024.1";
end system3_clkDivide_0_0;

architecture STRUCTURE of system3_clkDivide_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
begin
inst: entity work.system3_clkDivide_0_0_clkDivide
     port map (
      bit(4 downto 0) => bit(4 downto 0),
      clk => clk,
      fClk => fClk
    );
end STRUCTURE;

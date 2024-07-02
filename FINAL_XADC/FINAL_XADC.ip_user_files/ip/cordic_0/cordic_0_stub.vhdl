-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Tue Jun 13 23:40:10 2023
-- Host        : PARANORMALWORLD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/rawan/FINAL_XADC/FINAL_XADC.gen/sources_1/ip/cordic_0/cordic_0_stub.vhdl
-- Design      : cordic_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cordic_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_cartesian_tvalid : in STD_LOGIC;
    s_axis_cartesian_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end cordic_0;

architecture stub of cordic_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aclken,s_axis_cartesian_tvalid,s_axis_cartesian_tdata[15:0],m_axis_dout_tvalid,m_axis_dout_tdata[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "cordic_v6_0_18,Vivado 2022.2";
begin
end;

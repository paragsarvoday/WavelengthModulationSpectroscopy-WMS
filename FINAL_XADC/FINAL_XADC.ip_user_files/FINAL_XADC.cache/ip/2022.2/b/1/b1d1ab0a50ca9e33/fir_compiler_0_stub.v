// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Jun 14 16:27:04 2023
// Host        : PARANORMALWORLD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fir_compiler_0_stub.v
// Design      : fir_compiler_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fir_compiler_v7_2_18,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, s_axis_data_tvalid, s_axis_data_tready, 
  s_axis_data_tdata, m_axis_data_tvalid, m_axis_data_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_data_tvalid,s_axis_data_tready,s_axis_data_tdata[23:0],m_axis_data_tvalid,m_axis_data_tdata[23:0]" */;
  input aclk;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  input [23:0]s_axis_data_tdata;
  output m_axis_data_tvalid;
  output [23:0]m_axis_data_tdata;
endmodule

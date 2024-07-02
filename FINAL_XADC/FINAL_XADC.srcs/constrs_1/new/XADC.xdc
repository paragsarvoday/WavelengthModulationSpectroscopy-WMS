## This file is a general .xdc for the Nexys4 DDR Rev. C
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]


##Switches

#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { SW[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { SW[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]
#set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { SW[2] }]; #IO_L6N_T0_D08_VREF_14 Sch=sw[2]
#set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { SW[3] }]; #IO_L13N_T2_MRCC_14 Sch=sw[3]
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { SW[4] }]; #IO_L12N_T1_MRCC_14 Sch=sw[4]
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { SW[5] }]; #IO_L7N_T1_D10_14 Sch=sw[5]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { SW[6] }]; #IO_L17N_T2_A13_D29_14 Sch=sw[6]
#set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { SW[7] }]; #IO_L5N_T0_D07_14 Sch=sw[7]
#set_property -dict { PACKAGE_PIN T8    IOSTANDARD LVCMOS18 } [get_ports { SW[8] }]; #IO_L24N_T3_34 Sch=sw[8]
#set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS18 } [get_ports { SW[9] }]; #IO_25_34 Sch=sw[9]
#set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { SW[10] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=sw[10]
#set_property -dict { PACKAGE_PIN T13   IOSTANDARD LVCMOS33 } [get_ports { SW[11] }]; #IO_L23P_T3_A03_D19_14 Sch=sw[11]
#set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { SW[12] }]; #IO_L24P_T3_35 Sch=sw[12]
#set_property -dict { PACKAGE_PIN U12   IOSTANDARD LVCMOS33 } [get_ports { SW[13] }]; #IO_L20P_T3_A08_D24_14 Sch=sw[13]
#set_property -dict { PACKAGE_PIN U11   IOSTANDARD LVCMOS33 } [get_ports { SW[14] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=sw[14]
#set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS33 } [get_ports { SW[15] }]; #IO_L21P_T3_DQS_14 Sch=sw[15]


## LEDs

#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
#set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
#set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
#set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; #IO_L7P_T1_D09_14 Sch=led[4]
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { LED[8] }]; #IO_L16N_T2_A15_D31_14 Sch=led[8]
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { LED[9] }]; #IO_L14N_T2_SRCC_14 Sch=led[9]
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { LED[10] }]; #IO_L22P_T3_A05_D21_14 Sch=led[10]
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { LED[11] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=led[11]
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { LED[12] }]; #IO_L16P_T2_CSI_B_14 Sch=led[12]
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { LED[13] }]; #IO_L22N_T3_A04_D20_14 Sch=led[13]
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { LED[14] }]; #IO_L20N_T3_A07_D23_14 Sch=led[14]
#set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { LED[15] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=led[15]

set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports led_busy]
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports led_busy]
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports led_busy]
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { LED17_B }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=led17_b
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { LED17_G }]; #IO_0_14 Sch=led17_g
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { LED17_R }]; #IO_L11N_T1_SRCC_14 Sch=led17_r


##7 segment display



##Buttons

#set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { CPU_RESETN }]; #IO_L3P_T0_DQS_AD1P_15 Sch=cpu_resetn

set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports rst]
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports   ]; #IO_L4N_T0_D05_14 Sch=btnu
#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { BTNL }]; #IO_L12P_T1_MRCC_14 Sch=btnl
#set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { BTNR }]; #IO_L10N_T1_D15_14 Sch=btnr
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { BTND }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd


##Pmod Headers


##Pmod Header JA

#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { JA[1] }]; #IO_L20N_T3_A19_15 Sch=ja[1]
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { JA[2] }]; #IO_L21N_T3_DQS_A18_15 Sch=ja[2]
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { JA[3] }]; #IO_L21P_T3_DQS_15 Sch=ja[3]
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { JA[4] }]; #IO_L18N_T2_A23_15 Sch=ja[4]
#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { JA[7] }]; #IO_L16N_T2_A27_15 Sch=ja[7]
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { JA[8] }]; #IO_L16P_T2_A28_15 Sch=ja[8]
#set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVCMOS33 } [get_ports { JA[9] }]; #IO_L22N_T3_A16_15 Sch=ja[9]
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { JA[10] }]; #IO_L22P_T3_A17_15 Sch=ja[10]


##Pmod Header JB

#set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { JB[1] }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]
#set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { JB[2] }]; #IO_L14N_T2_SRCC_15 Sch=jb[2]
#set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { JB[3] }]; #IO_L13N_T2_MRCC_15 Sch=jb[3]
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { JB[4] }]; #IO_L15P_T2_DQS_15 Sch=jb[4]
#set_property -dict { PACKAGE_PIN E16   IOSTANDARD LVCMOS33 } [get_ports { JB[7] }]; #IO_L11N_T1_SRCC_15 Sch=jb[7]
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { JB[8] }]; #IO_L5P_T0_AD9P_15 Sch=jb[8]
#set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { JB[9] }]; #IO_0_15 Sch=jb[9]
#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { JB[10] }]; #IO_L13P_T2_MRCC_15 Sch=jb[10]


##Pmod Header JC

#set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { JC[1] }]; #IO_L23N_T3_35 Sch=jc[1]
#set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { JC[2] }]; #IO_L19N_T3_VREF_35 Sch=jc[2]
#set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { JC[3] }]; #IO_L22N_T3_35 Sch=jc[3]
#set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { JC[4] }]; #IO_L19P_T3_35 Sch=jc[4]
#set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { JC[7] }]; #IO_L6P_T0_35 Sch=jc[7]
#set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { JC[8] }]; #IO_L22P_T3_35 Sch=jc[8]
#set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { JC[9] }]; #IO_L21P_T3_DQS_35 Sch=jc[9]
#set_property -dict { PACKAGE_PIN E6    IOSTANDARD LVCMOS33 } [get_ports { JC[10] }]; #IO_L5P_T0_AD13P_35 Sch=jc[10]


##Pmod Header JD

#set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { JD[1] }]; #IO_L21N_T3_DQS_35 Sch=jd[1]
#set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { JD[2] }]; #IO_L17P_T2_35 Sch=jd[2]
#set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { JD[3] }]; #IO_L17N_T2_35 Sch=jd[3]
#set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { JD[4] }]; #IO_L20N_T3_35 Sch=jd[4]
#set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { JD[7] }]; #IO_L15P_T2_DQS_35 Sch=jd[7]
#set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { JD[8] }]; #IO_L20P_T3_35 Sch=jd[8]
#set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { JD[9] }]; #IO_L15N_T2_DQS_35 Sch=jd[9]
#set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { JD[10] }]; #IO_L13N_T2_MRCC_35 Sch=jd[10]


##Pmod Header JXADC

#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVDS     } [get_ports { XA_N[1] }]; #IO_L9N_T1_DQS_AD3N_15 Sch=xa_n[1]
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVDS     } [get_ports { XA_P[1] }]; #IO_L9P_T1_DQS_AD3P_15 Sch=xa_p[1]
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVDS     } [get_ports { XA_N[2] }]; #IO_L8N_T1_AD10N_15 Sch=xa_n[2]
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVDS     } [get_ports { XA_P[2] }]; #IO_L8P_T1_AD10P_15 Sch=xa_p[2]
#set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33     } [get_ports { vauxn }]; #IO_L7N_T1_AD2N_15 Sch=xa_n[3]
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33    } [get_ports { vauxp }]; #IO_L7P_T1_AD2P_15 Sch=xa_p[3]
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports vauxn]
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports vauxp]


##VGA Connector

#set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { VGA_R[0] }]; #IO_L8N_T1_AD14N_35 Sch=vga_r[0]
#set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { VGA_R[1] }]; #IO_L7N_T1_AD6N_35 Sch=vga_r[1]
#set_property -dict { PACKAGE_PIN C5    IOSTANDARD LVCMOS33 } [get_ports { VGA_R[2] }]; #IO_L1N_T0_AD4N_35 Sch=vga_r[2]
#set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { VGA_R[3] }]; #IO_L8P_T1_AD14P_35 Sch=vga_r[3]

#set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { VGA_G[0] }]; #IO_L1P_T0_AD4P_35 Sch=vga_g[0]
#set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { VGA_G[1] }]; #IO_L3N_T0_DQS_AD5N_35 Sch=vga_g[1]
#set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { VGA_G[2] }]; #IO_L2N_T0_AD12N_35 Sch=vga_g[2]
#set_property -dict { PACKAGE_PIN A6    IOSTANDARD LVCMOS33 } [get_ports { VGA_G[3] }]; #IO_L3P_T0_DQS_AD5P_35 Sch=vga_g[3]

#set_property -dict { PACKAGE_PIN B7    IOSTANDARD LVCMOS33 } [get_ports { VGA_B[0] }]; #IO_L2P_T0_AD12P_35 Sch=vga_b[0]
#set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { VGA_B[1] }]; #IO_L4N_T0_35 Sch=vga_b[1]
#set_property -dict { PACKAGE_PIN D7    IOSTANDARD LVCMOS33 } [get_ports { VGA_B[2] }]; #IO_L6N_T0_VREF_35 Sch=vga_b[2]
#set_property -dict { PACKAGE_PIN D8    IOSTANDARD LVCMOS33 } [get_ports { VGA_B[3] }]; #IO_L4P_T0_35 Sch=vga_b[3]

#set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { VGA_HS }]; #IO_L4P_T0_15 Sch=vga_hs
#set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { VGA_VS }]; #IO_L3N_T0_DQS_AD1N_15 Sch=vga_vs


##Micro SD Connector

#set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { SD_RESET }]; #IO_L14P_T2_SRCC_35 Sch=sd_reset
#set_property -dict { PACKAGE_PIN A1    IOSTANDARD LVCMOS33 } [get_ports { SD_CD }]; #IO_L9N_T1_DQS_AD7N_35 Sch=sd_cd
#set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { SD_SCK }]; #IO_L9P_T1_DQS_AD7P_35 Sch=sd_sck
#set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { SD_CMD }]; #IO_L16N_T2_35 Sch=sd_cmd
#set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[0] }]; #IO_L16P_T2_35 Sch=sd_dat[0]
#set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[1] }]; #IO_L18N_T2_35 Sch=sd_dat[1]
#set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[2] }]; #IO_L18P_T2_35 Sch=sd_dat[2]
#set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { SD_DAT[3] }]; #IO_L14N_T2_SRCC_35 Sch=sd_dat[3]


##Accelerometer

#set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { ACL_MISO }]; #IO_L11P_T1_SRCC_15 Sch=acl_miso
#set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { ACL_MOSI }]; #IO_L5N_T0_AD9N_15 Sch=acl_mosi
#set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { ACL_SCLK }]; #IO_L14P_T2_SRCC_15 Sch=acl_sclk
#set_property -dict { PACKAGE_PIN D15   IOSTANDARD LVCMOS33 } [get_ports { ACL_CSN }]; #IO_L12P_T1_MRCC_15 Sch=acl_csn
#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { ACL_INT[1] }]; #IO_L2P_T0_AD8P_15 Sch=acl_int[1]
#set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { ACL_INT[2] }]; #IO_L20P_T3_A20_15 Sch=acl_int[2]


##Temperature Sensor

#set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { TMP_SCL }]; #IO_L1N_T0_AD0N_15 Sch=tmp_scl
#set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { TMP_SDA }]; #IO_L12N_T1_MRCC_15 Sch=tmp_sda
#set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { TMP_INT }]; #IO_L6N_T0_VREF_15 Sch=tmp_int
#set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { TMP_CT }]; #IO_L2N_T0_AD8N_15 Sch=tmp_ct

##Omnidirectional Microphone

#set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { M_CLK }]; #IO_25_35 Sch=m_clk
#set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { M_DATA }]; #IO_L24N_T3_35 Sch=m_data
#set_property -dict { PACKAGE_PIN F5    IOSTANDARD LVCMOS33 } [get_ports { M_LRSEL }]; #IO_0_35 Sch=m_lrsel


##PWM Audio Amplifier

#set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { AUD_PWM }]; #IO_L4N_T0_15 Sch=aud_pwm
#set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { AUD_SD }]; #IO_L6P_T0_15 Sch=aud_sd


##USB-RS232 Interface

#set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { UART_TXD_IN }]; #IO_L7P_T1_AD6P_35 Sch=uart_txd_in
#set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { UART_RXD_OUT }]; #IO_L11N_T1_SRCC_35 Sch=uart_rxd_out
#set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { UART_CTS }]; #IO_L12N_T1_MRCC_35 Sch=uart_cts
#set_property -dict { PACKAGE_PIN E5    IOSTANDARD LVCMOS33 } [get_ports { UART_RTS }]; #IO_L5N_T0_AD13N_35 Sch=uart_rts

##USB HID (PS/2)

#set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { PS2_CLK }]; #IO_L13P_T2_MRCC_35 Sch=ps2_clk
#set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { PS2_DATA }]; #IO_L10N_T1_AD15N_35 Sch=ps2_data


##SMSC Ethernet PHY

#set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS33 } [get_ports { ETH_MDC }]; #IO_L11P_T1_SRCC_16 Sch=eth_mdc
#set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { ETH_MDIO }]; #IO_L14N_T2_SRCC_16 Sch=eth_mdio
#set_property -dict { PACKAGE_PIN B3    IOSTANDARD LVCMOS33 } [get_ports { ETH_RSTN }]; #IO_L10P_T1_AD15P_35 Sch=eth_rstn
#set_property -dict { PACKAGE_PIN D9    IOSTANDARD LVCMOS33 } [get_ports { ETH_CRSDV }]; #IO_L6N_T0_VREF_16 Sch=eth_crsdv
#set_property -dict { PACKAGE_PIN C10   IOSTANDARD LVCMOS33 } [get_ports { ETH_RXERR }]; #IO_L13N_T2_MRCC_16 Sch=eth_rxerr
#set_property -dict { PACKAGE_PIN C11   IOSTANDARD LVCMOS33 } [get_ports { ETH_RXD[0] }]; #IO_L13P_T2_MRCC_16 Sch=eth_rxd[0]
#set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { ETH_RXD[1] }]; #IO_L19N_T3_VREF_16 Sch=eth_rxd[1]
#set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS33 } [get_ports { ETH_TXEN }]; #IO_L11N_T1_SRCC_16 Sch=eth_txen
#set_property -dict { PACKAGE_PIN A10   IOSTANDARD LVCMOS33 } [get_ports { ETH_TXD[0] }]; #IO_L14P_T2_SRCC_16 Sch=eth_txd[0]
#set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS33 } [get_ports { ETH_TXD[1] }]; #IO_L12N_T1_MRCC_16 Sch=eth_txd[1]
#set_property -dict { PACKAGE_PIN D5    IOSTANDARD LVCMOS33 } [get_ports { ETH_REFCLK }]; #IO_L11P_T1_SRCC_35 Sch=eth_refclk
#set_property -dict { PACKAGE_PIN B8    IOSTANDARD LVCMOS33 } [get_ports { ETH_INTN }]; #IO_L12P_T1_MRCC_16 Sch=eth_intn


##Quad SPI Flash

#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { QSPI_DQ[0] }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { QSPI_DQ[1] }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { QSPI_DQ[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { QSPI_DQ[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]
#set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { QSPI_CSN }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_csn



#set_property PACKAGE_PIN D14 [get_ports {out[0]}]
#set_property PACKAGE_PIN F16 [get_ports {out[1]}]
#set_property PACKAGE_PIN G16 [get_ports {out[2]}]
#set_property PACKAGE_PIN H14 [get_ports {out[3]}]
#set_property PACKAGE_PIN E16 [get_ports {out[4]}]
#set_property PACKAGE_PIN F13 [get_ports {out[5]}]
#set_property PACKAGE_PIN G13 [get_ports {out[6]}]
#set_property PACKAGE_PIN H16 [get_ports {out[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[0]}]

#set_property MARK_DEBUG false [get_nets clk_IBUF_BUFG]





#set_property MARK_DEBUG false [get_nets {coswave_reg__0[1]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[6]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[7]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[8]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[9]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[10]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[0]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[2]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[3]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[4]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[5]}]
#set_property MARK_DEBUG false [get_nets {coswave_reg__0[11]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[0]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[1]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[2]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[3]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[4]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[5]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[7]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[10]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[6]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[8]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[9]}]
#set_property MARK_DEBUG false [get_nets {sinusoidal_reg__0[11]}]



#set_property MARK_DEBUG false [get_nets {y1[0]}]
#set_property MARK_DEBUG false [get_nets {y1[1]}]
#set_property MARK_DEBUG false [get_nets {y1[2]}]
#set_property MARK_DEBUG false [get_nets {y1[3]}]
#set_property MARK_DEBUG false [get_nets {y1[4]}]
#set_property MARK_DEBUG false [get_nets {y1[5]}]
#set_property MARK_DEBUG false [get_nets {y1[6]}]
#set_property MARK_DEBUG false [get_nets {y1[7]}]
#set_property MARK_DEBUG false [get_nets {y2[3]}]
#set_property MARK_DEBUG false [get_nets {y2[6]}]
#set_property MARK_DEBUG false [get_nets {y2[7]}]
#set_property MARK_DEBUG false [get_nets {y2[0]}]
#set_property MARK_DEBUG false [get_nets {y2[1]}]
#set_property MARK_DEBUG false [get_nets {y2[2]}]
#set_property MARK_DEBUG false [get_nets {y2[4]}]
#set_property MARK_DEBUG false [get_nets {y2[5]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[5]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[14]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[2]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[3]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[4]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[0]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[7]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[9]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[10]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[1]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[6]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[8]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[11]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[12]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[13]}]
#set_property MARK_DEBUG false [get_nets {XADC/do_out[15]}]




#set_property MARK_DEBUG true [get_nets {x_12bit[0]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[1]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[3]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[4]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[9]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[10]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[2]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[5]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[6]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[7]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[8]}]
#set_property MARK_DEBUG true [get_nets {x_12bit[11]}]
#connect_debug_port u_ila_0/probe4 [get_nets [list {x_12bit[0]} {x_12bit[1]} {x_12bit[2]} {x_12bit[3]} {x_12bit[4]} {x_12bit[5]} {x_12bit[6]} {x_12bit[7]} {x_12bit[8]} {x_12bit[9]} {x_12bit[10]} {x_12bit[11]}]]








#set_property MARK_DEBUG false [get_nets XADC/vauxp11]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[1]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[5]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[13]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[14]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[17]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[0]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[2]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[9]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[11]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[18]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[19]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[21]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[3]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[10]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[12]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[15]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[22]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[4]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[6]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[7]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[8]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[16]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[20]}]
#set_property MARK_DEBUG false [get_nets {fir1/s_axis_data_tdata[23]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[1]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[3]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[9]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[10]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[11]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[19]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[22]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[6]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[7]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[8]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[12]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[15]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[21]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[0]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[2]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[5]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[13]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[17]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[20]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[4]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[14]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[16]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[18]}]
#set_property MARK_DEBUG false [get_nets {fir2/s_axis_data_tdata[23]}]





#set_property MARK_DEBUG false [get_nets {y_23bit[1]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[2]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[3]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[11]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[14]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[20]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[21]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[8]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[17]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[23]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[0]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[5]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[6]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[10]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[15]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[18]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[4]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[7]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[9]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[12]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[13]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[16]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[19]}]
#set_property MARK_DEBUG false [get_nets {y_23bit[22]}]









#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[27]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[32]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[36]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[41]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[45]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[26]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[24]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[28]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[33]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[37]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[40]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[42]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[44]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[25]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[29]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[31]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[35]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[38]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[46]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[47]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[30]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[34]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[39]}]
#set_property MARK_DEBUG true [get_nets {fir1/m_axis_data_tdata[43]}]
















#connect_debug_port u_ila_0/probe0 [get_nets [list {m5/P[0]} {m5/P[1]} {m5/P[2]} {m5/P[3]} {m5/P[4]} {m5/P[5]} {m5/P[6]} {m5/P[7]} {m5/P[8]} {m5/P[9]} {m5/P[10]} {m5/P[11]} {m5/P[12]} {m5/P[13]} {m5/P[14]} {m5/P[15]} {m5/P[16]} {m5/P[17]} {m5/P[18]} {m5/P[19]} {m5/P[20]} {m5/P[21]} {m5/P[22]} {m5/P[23]} {m5/P[24]} {m5/P[25]} {m5/P[26]} {m5/P[27]} {m5/P[28]} {m5/P[29]} {m5/P[30]} {m5/P[31]} {m5/P[32]}]]




#set_property IOSTANDARD LVCMOS33 [get_ports {out[11]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[10]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[9]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {out[8]}]
#set_property PACKAGE_PIN V16 [get_ports {out[8]}]
#set_property PACKAGE_PIN T15 [get_ports {out[9]}]
#set_property PACKAGE_PIN U14 [get_ports {out[10]}]
#set_property PACKAGE_PIN T16 [get_ports {out[11]}]

#set_property MARK_DEBUG false [get_nets {m1/P[5]}]
#set_property MARK_DEBUG false [get_nets {m1/P[7]}]
#set_property MARK_DEBUG false [get_nets {m1/P[9]}]
#set_property MARK_DEBUG false [get_nets {m1/P[18]}]
#set_property MARK_DEBUG false [get_nets {m1/P[20]}]
#set_property MARK_DEBUG false [get_nets {m1/P[2]}]
#set_property MARK_DEBUG false [get_nets {m1/P[3]}]
#set_property MARK_DEBUG false [get_nets {m1/P[10]}]
#set_property MARK_DEBUG false [get_nets {m1/P[11]}]
#set_property MARK_DEBUG false [get_nets {m1/P[12]}]
#set_property MARK_DEBUG false [get_nets {m1/P[13]}]
#set_property MARK_DEBUG false [get_nets {m1/P[21]}]
#set_property MARK_DEBUG false [get_nets {m1/P[22]}]
#set_property MARK_DEBUG false [get_nets {m1/P[4]}]
#set_property MARK_DEBUG false [get_nets {m1/P[6]}]
#set_property MARK_DEBUG false [get_nets {m1/P[19]}]
#set_property MARK_DEBUG false [get_nets {m1/P[23]}]
#set_property MARK_DEBUG false [get_nets {m1/P[0]}]
#set_property MARK_DEBUG false [get_nets {m1/P[1]}]
#set_property MARK_DEBUG false [get_nets {m1/P[8]}]
#set_property MARK_DEBUG false [get_nets {m1/P[14]}]
#set_property MARK_DEBUG false [get_nets {m1/P[15]}]
#set_property MARK_DEBUG false [get_nets {m1/P[16]}]
#set_property MARK_DEBUG false [get_nets {m1/P[17]}]
#set_property MARK_DEBUG false [get_nets {m2/A[0]}]
#set_property MARK_DEBUG false [get_nets {m2/A[2]}]
#set_property MARK_DEBUG false [get_nets {m2/A[3]}]
#set_property MARK_DEBUG false [get_nets {m2/A[5]}]
#set_property MARK_DEBUG false [get_nets {m2/A[6]}]
#set_property MARK_DEBUG false [get_nets {m2/A[7]}]
#set_property MARK_DEBUG false [get_nets {m2/A[9]}]
#set_property MARK_DEBUG false [get_nets {m2/A[1]}]
#set_property MARK_DEBUG false [get_nets {m2/A[4]}]
#set_property MARK_DEBUG false [get_nets {m2/A[8]}]
#set_property MARK_DEBUG false [get_nets {m2/A[10]}]
#set_property MARK_DEBUG false [get_nets {m2/A[11]}]
#set_property MARK_DEBUG false [get_nets {m2/P[6]}]
#set_property MARK_DEBUG false [get_nets {m2/P[11]}]
#set_property MARK_DEBUG false [get_nets {m2/P[12]}]
#set_property MARK_DEBUG false [get_nets {m2/P[13]}]
#set_property MARK_DEBUG false [get_nets {m2/P[0]}]
#set_property MARK_DEBUG false [get_nets {m2/P[9]}]
#set_property MARK_DEBUG false [get_nets {m2/P[10]}]
#set_property MARK_DEBUG false [get_nets {m2/P[14]}]
#set_property MARK_DEBUG false [get_nets {m2/P[16]}]
#set_property MARK_DEBUG false [get_nets {m2/P[18]}]
#set_property MARK_DEBUG false [get_nets {m2/P[20]}]
#set_property MARK_DEBUG false [get_nets {m2/P[2]}]
#set_property MARK_DEBUG false [get_nets {m2/P[3]}]
#set_property MARK_DEBUG false [get_nets {m2/P[7]}]
#set_property MARK_DEBUG false [get_nets {m2/P[21]}]
#set_property MARK_DEBUG false [get_nets {m2/P[22]}]
#set_property MARK_DEBUG false [get_nets {m2/P[23]}]
#set_property MARK_DEBUG false [get_nets {m2/P[1]}]
#set_property MARK_DEBUG false [get_nets {m2/P[4]}]
#set_property MARK_DEBUG false [get_nets {m2/P[5]}]
#set_property MARK_DEBUG false [get_nets {m2/P[8]}]
#set_property MARK_DEBUG false [get_nets {m2/P[15]}]
#set_property MARK_DEBUG false [get_nets {m2/P[17]}]
#set_property MARK_DEBUG false [get_nets {m2/P[19]}]

#set_property MARK_DEBUG true [get_nets {out_OBUF[9]}]
#set_property MARK_DEBUG true [get_nets {out_OBUF[11]}]
#set_property MARK_DEBUG true [get_nets {out_OBUF[8]}]
#set_property MARK_DEBUG true [get_nets {out_OBUF[10]}]








set_property PACKAGE_PIN J15 [get_ports freqsel]
set_property IOSTANDARD LVCMOS33 [get_ports freqsel]

#set_property MARK_DEBUG false [get_nets {add1/S[5]}]
#set_property MARK_DEBUG false [get_nets {add1/S[6]}]
#set_property MARK_DEBUG false [get_nets {add1/S[11]}]
#set_property MARK_DEBUG false [get_nets {add1/S[13]}]
#set_property MARK_DEBUG false [get_nets {add1/S[14]}]
#set_property MARK_DEBUG false [get_nets {add1/S[35]}]
#set_property MARK_DEBUG false [get_nets {add1/S[42]}]
#set_property MARK_DEBUG false [get_nets {add1/S[17]}]
#set_property MARK_DEBUG false [get_nets {add1/S[22]}]
#set_property MARK_DEBUG false [get_nets {add1/S[27]}]
#set_property MARK_DEBUG false [get_nets {add1/S[29]}]
#set_property MARK_DEBUG false [get_nets {add1/S[36]}]
#set_property MARK_DEBUG false [get_nets {add1/S[26]}]
#set_property MARK_DEBUG false [get_nets {add1/S[9]}]
#set_property MARK_DEBUG false [get_nets {add1/S[10]}]
#set_property MARK_DEBUG false [get_nets {add1/S[15]}]
#set_property MARK_DEBUG false [get_nets {add1/S[16]}]
#set_property MARK_DEBUG false [get_nets {add1/S[21]}]
#set_property MARK_DEBUG false [get_nets {add1/S[33]}]
#set_property MARK_DEBUG false [get_nets {add1/S[43]}]
#set_property MARK_DEBUG false [get_nets {add1/S[37]}]
#set_property MARK_DEBUG false [get_nets {add1/S[38]}]
#set_property MARK_DEBUG false [get_nets {add1/S[45]}]
#set_property MARK_DEBUG false [get_nets {add1/S[39]}]
#set_property MARK_DEBUG false [get_nets {add1/S[8]}]
#set_property MARK_DEBUG false [get_nets {add1/S[4]}]
#set_property MARK_DEBUG false [get_nets {add1/S[1]}]
#set_property MARK_DEBUG false [get_nets {add1/S[3]}]
#set_property MARK_DEBUG false [get_nets {add1/S[20]}]
#set_property MARK_DEBUG false [get_nets {add1/S[23]}]
#set_property MARK_DEBUG false [get_nets {add1/S[24]}]
#set_property MARK_DEBUG false [get_nets {add1/S[28]}]
#set_property MARK_DEBUG false [get_nets {add1/S[32]}]
#set_property MARK_DEBUG false [get_nets {add1/S[30]}]
#set_property MARK_DEBUG false [get_nets {add1/S[34]}]
#set_property MARK_DEBUG false [get_nets {add1/S[0]}]
#set_property MARK_DEBUG false [get_nets {add1/S[2]}]
#set_property MARK_DEBUG false [get_nets {add1/S[7]}]
#set_property MARK_DEBUG false [get_nets {add1/S[46]}]
#set_property MARK_DEBUG false [get_nets {add1/S[44]}]
#set_property MARK_DEBUG false [get_nets {add1/S[47]}]
#set_property MARK_DEBUG false [get_nets {add1/S[12]}]
#set_property MARK_DEBUG false [get_nets {add1/S[18]}]
#set_property MARK_DEBUG false [get_nets {add1/S[19]}]
#set_property MARK_DEBUG false [get_nets {add1/S[25]}]
#set_property MARK_DEBUG false [get_nets {add1/S[41]}]
#set_property MARK_DEBUG false [get_nets {add1/S[31]}]
#set_property MARK_DEBUG false [get_nets {add1/S[40]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[16]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[0]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[38]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[44]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[47]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[42]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[40]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[22]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[33]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[4]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[13]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[26]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[39]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[27]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[34]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[54]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[3]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[7]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[19]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[20]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[24]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[49]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[51]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[8]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[35]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[10]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[43]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[45]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[46]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[28]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[29]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[5]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[9]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[14]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[21]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[41]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[50]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[55]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[25]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[32]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[11]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[2]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[15]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[17]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[37]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[52]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[53]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[23]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[31]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[36]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[48]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[1]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[6]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[12]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[18]}]
#set_property MARK_DEBUG false [get_nets {div/m_axis_dout_tdata[30]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[3]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[4]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[5]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[7]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[9]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[16]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[22]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[23]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[10]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[11]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[15]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[18]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[1]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[13]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[14]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[17]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[19]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[21]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[0]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[2]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[6]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[8]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[12]}]
#set_property MARK_DEBUG false [get_nets {fir1/m_axis_data_tdata[20]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[2]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[3]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[9]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[19]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[20]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[12]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[21]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[1]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[5]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[7]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[11]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[14]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[15]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[17]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[18]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[8]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[0]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[4]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[6]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[10]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[13]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[16]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[22]}]
#set_property MARK_DEBUG false [get_nets {fir2/m_axis_data_tdata[23]}]


#set_property MARK_DEBUG false [get_nets {m1/B[0]}]
#set_property MARK_DEBUG false [get_nets {m1/B[2]}]
#set_property MARK_DEBUG false [get_nets {m1/B[3]}]
#set_property MARK_DEBUG false [get_nets {m1/B[4]}]
#set_property MARK_DEBUG false [get_nets {m1/B[7]}]
#set_property MARK_DEBUG false [get_nets {m1/B[9]}]
#set_property MARK_DEBUG false [get_nets {m1/B[11]}]
#set_property MARK_DEBUG false [get_nets {m1/B[1]}]
#set_property MARK_DEBUG false [get_nets {m1/B[5]}]
#set_property MARK_DEBUG false [get_nets {m1/B[6]}]
#set_property MARK_DEBUG false [get_nets {m1/B[8]}]
#set_property MARK_DEBUG false [get_nets {m1/B[10]}]
#set_property MARK_DEBUG false [get_nets {m2/B[0]}]
#set_property MARK_DEBUG false [get_nets {m2/B[4]}]
#set_property MARK_DEBUG false [get_nets {m2/B[5]}]
#set_property MARK_DEBUG false [get_nets {m2/B[6]}]
#set_property MARK_DEBUG false [get_nets {m2/B[9]}]
#set_property MARK_DEBUG false [get_nets {m2/B[10]}]
#set_property MARK_DEBUG false [get_nets {m2/B[1]}]
#set_property MARK_DEBUG false [get_nets {m2/B[2]}]
#set_property MARK_DEBUG false [get_nets {m2/B[3]}]
#set_property MARK_DEBUG false [get_nets {m2/B[7]}]
#set_property MARK_DEBUG false [get_nets {m2/B[8]}]
#set_property MARK_DEBUG false [get_nets {m2/B[11]}]
#set_property MARK_DEBUG false [get_nets {m3/P[5]}]
#set_property MARK_DEBUG false [get_nets {m3/P[9]}]
#set_property MARK_DEBUG false [get_nets {m3/P[17]}]
#set_property MARK_DEBUG false [get_nets {m3/P[7]}]
#set_property MARK_DEBUG false [get_nets {m3/P[15]}]
#set_property MARK_DEBUG false [get_nets {m3/P[16]}]
#set_property MARK_DEBUG false [get_nets {m3/P[19]}]
#set_property MARK_DEBUG false [get_nets {m3/P[36]}]
#set_property MARK_DEBUG false [get_nets {m3/P[24]}]
#set_property MARK_DEBUG false [get_nets {m3/P[26]}]
#set_property MARK_DEBUG false [get_nets {m3/P[27]}]
#set_property MARK_DEBUG false [get_nets {m3/P[28]}]
#set_property MARK_DEBUG false [get_nets {m3/P[44]}]
#set_property MARK_DEBUG false [get_nets {m3/P[30]}]
#set_property MARK_DEBUG false [get_nets {m3/P[40]}]
#set_property MARK_DEBUG false [get_nets {m3/P[43]}]
#set_property MARK_DEBUG false [get_nets {m3/P[2]}]
#set_property MARK_DEBUG false [get_nets {m3/P[4]}]
#set_property MARK_DEBUG false [get_nets {m3/P[20]}]
#set_property MARK_DEBUG false [get_nets {m3/P[21]}]
#set_property MARK_DEBUG false [get_nets {m3/P[37]}]
#set_property MARK_DEBUG false [get_nets {m3/P[38]}]
#set_property MARK_DEBUG false [get_nets {m3/P[39]}]
#set_property MARK_DEBUG false [get_nets {m3/P[45]}]
#set_property MARK_DEBUG false [get_nets {m3/P[1]}]
#set_property MARK_DEBUG false [get_nets {m3/P[6]}]
#set_property MARK_DEBUG false [get_nets {m3/P[11]}]
#set_property MARK_DEBUG false [get_nets {m3/P[14]}]
#set_property MARK_DEBUG false [get_nets {m3/P[22]}]
#set_property MARK_DEBUG false [get_nets {m3/P[23]}]
#set_property MARK_DEBUG false [get_nets {m3/P[31]}]
#set_property MARK_DEBUG false [get_nets {m3/P[46]}]
#set_property MARK_DEBUG false [get_nets {m3/P[0]}]
#set_property MARK_DEBUG false [get_nets {m3/P[3]}]
#set_property MARK_DEBUG false [get_nets {m3/P[18]}]
#set_property MARK_DEBUG false [get_nets {m3/P[8]}]
#set_property MARK_DEBUG false [get_nets {m3/P[10]}]
#set_property MARK_DEBUG false [get_nets {m3/P[12]}]
#set_property MARK_DEBUG false [get_nets {m3/P[13]}]
#set_property MARK_DEBUG false [get_nets {m3/P[25]}]
#set_property MARK_DEBUG false [get_nets {m3/P[29]}]
#set_property MARK_DEBUG false [get_nets {m3/P[32]}]
#set_property MARK_DEBUG false [get_nets {m3/P[34]}]
#set_property MARK_DEBUG false [get_nets {m3/P[33]}]
#set_property MARK_DEBUG false [get_nets {m3/P[41]}]
#set_property MARK_DEBUG false [get_nets {m3/P[42]}]
#set_property MARK_DEBUG false [get_nets {m3/P[35]}]
#set_property MARK_DEBUG false [get_nets {m3/P[47]}]
#set_property MARK_DEBUG false [get_nets {m5/P[21]}]
#set_property MARK_DEBUG false [get_nets {m5/P[1]}]
#set_property MARK_DEBUG false [get_nets {m5/P[5]}]
#set_property MARK_DEBUG false [get_nets {m5/P[10]}]
#set_property MARK_DEBUG false [get_nets {m5/P[12]}]
#set_property MARK_DEBUG false [get_nets {m5/P[20]}]
#set_property MARK_DEBUG false [get_nets {m5/P[22]}]
#set_property MARK_DEBUG false [get_nets {m5/P[25]}]
#set_property MARK_DEBUG false [get_nets {m5/P[28]}]
#set_property MARK_DEBUG false [get_nets {m5/P[32]}]
#set_property MARK_DEBUG false [get_nets {m5/P[0]}]
#set_property MARK_DEBUG false [get_nets {m5/P[3]}]
#set_property MARK_DEBUG false [get_nets {m5/P[4]}]
#set_property MARK_DEBUG false [get_nets {m5/P[6]}]
#set_property MARK_DEBUG false [get_nets {m5/P[11]}]
#set_property MARK_DEBUG false [get_nets {m5/P[27]}]
#set_property MARK_DEBUG false [get_nets {m5/P[13]}]
#set_property MARK_DEBUG false [get_nets {m5/P[15]}]
#set_property MARK_DEBUG false [get_nets {m5/P[17]}]
#set_property MARK_DEBUG false [get_nets {m5/P[19]}]
#set_property MARK_DEBUG false [get_nets {m5/P[24]}]
#set_property MARK_DEBUG false [get_nets {m5/P[26]}]
#set_property MARK_DEBUG false [get_nets {m5/P[30]}]
#set_property MARK_DEBUG false [get_nets {m5/P[8]}]
#set_property MARK_DEBUG false [get_nets {m5/P[2]}]
#set_property MARK_DEBUG false [get_nets {m5/P[31]}]
#set_property MARK_DEBUG false [get_nets {m5/P[7]}]
#set_property MARK_DEBUG false [get_nets {m5/P[9]}]
#set_property MARK_DEBUG false [get_nets {m5/P[14]}]
#set_property MARK_DEBUG false [get_nets {m5/P[16]}]
#set_property MARK_DEBUG false [get_nets {m5/P[18]}]
#set_property MARK_DEBUG false [get_nets {m5/P[23]}]
#set_property MARK_DEBUG false [get_nets {m5/P[29]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[1]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[0]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[6]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[8]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[12]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[13]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[18]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[22]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[23]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[26]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[2]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[10]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[11]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[17]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[20]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[24]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[25]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[29]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[3]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[4]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[5]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[16]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[19]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[21]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[27]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[30]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[7]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[9]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[14]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[15]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[28]}]
#set_property MARK_DEBUG false [get_nets {sqr/m_axis_dout_tdata[31]}]
#set_property MARK_DEBUG false [get_nets {do_out[1]}]
#set_property MARK_DEBUG false [get_nets {do_out[3]}]
#set_property MARK_DEBUG false [get_nets {do_out[6]}]
#set_property MARK_DEBUG false [get_nets {do_out[12]}]
#set_property MARK_DEBUG false [get_nets {do_out[0]}]
#set_property MARK_DEBUG false [get_nets {do_out[4]}]
#set_property MARK_DEBUG false [get_nets {do_out[5]}]
#set_property MARK_DEBUG false [get_nets {do_out[7]}]
#set_property MARK_DEBUG false [get_nets {do_out[14]}]
#set_property MARK_DEBUG false [get_nets {do_out[2]}]
#set_property MARK_DEBUG false [get_nets {do_out[13]}]
#set_property MARK_DEBUG false [get_nets {do_out[15]}]
#set_property MARK_DEBUG false [get_nets {do_out[8]}]
#set_property MARK_DEBUG false [get_nets {do_out[9]}]
#set_property MARK_DEBUG false [get_nets {do_out[10]}]
#set_property MARK_DEBUG false [get_nets {do_out[11]}]
#set_property MARK_DEBUG false [get_nets rdy]

#set_property MARK_DEBUG true [get_nets {out_OBUF[0]}]
#set_property MARK_DEBUG true [get_nets {out_OBUF[1]}]
#set_property MARK_DEBUG true [get_nets {out_OBUF[2]}]
#set_property MARK_DEBUG true [get_nets {out_OBUF[3]}]
#set_property MARK_DEBUG true [get_nets {out_OBUF[4]}]
#set_property MARK_DEBUG true [get_nets {out_OBUF[5]}]
#set_property MARK_DEBUG true [get_nets {out_OBUF[6]}]
#set_property MARK_DEBUG true [get_nets {out_OBUF[7]}]
#set_property MARK_DEBUG true [get_nets {m1/A[0]}]
#set_property MARK_DEBUG true [get_nets {m1/A[2]}]
#set_property MARK_DEBUG true [get_nets {m1/A[5]}]
#set_property MARK_DEBUG true [get_nets {m1/A[8]}]
#set_property MARK_DEBUG true [get_nets {m1/A[11]}]
#set_property MARK_DEBUG true [get_nets {m1/A[1]}]
#set_property MARK_DEBUG true [get_nets {m1/A[3]}]
#set_property MARK_DEBUG true [get_nets {m1/A[4]}]
#set_property MARK_DEBUG true [get_nets {m1/A[6]}]
#set_property MARK_DEBUG true [get_nets {m1/A[7]}]
#set_property MARK_DEBUG true [get_nets {m1/A[9]}]
#set_property MARK_DEBUG true [get_nets {m1/A[10]}]
#create_debug_core u_ila_0 ila
#set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
#set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
#set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
#set_property C_DATA_DEPTH 131072 [get_debug_cores u_ila_0]
#set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
#set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
#set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
#set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
#set_property port_width 1 [get_debug_ports u_ila_0/clk]
#connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
#set_property port_width 12 [get_debug_ports u_ila_0/probe0]
#connect_debug_port u_ila_0/probe0 [get_nets [list {m1/A[0]} {m1/A[1]} {m1/A[2]} {m1/A[3]} {m1/A[4]} {m1/A[5]} {m1/A[6]} {m1/A[7]} {m1/A[8]} {m1/A[9]} {m1/A[10]} {m1/A[11]}]]
#create_debug_port u_ila_0 probe
#set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
#set_property port_width 8 [get_debug_ports u_ila_0/probe1]
#connect_debug_port u_ila_0/probe1 [get_nets [list {out_OBUF[0]} {out_OBUF[1]} {out_OBUF[2]} {out_OBUF[3]} {out_OBUF[4]} {out_OBUF[5]} {out_OBUF[6]} {out_OBUF[7]}]]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]

#set_property -dict { PACKAGE_PIN D4   IOSTANDARD LVCMOS33 } [get_ports { tx }]; # Specify I/O standard for tx

### LEDs

#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
#set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
#set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
#set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; #IO_L7P_T1_D09_14 Sch=led[4]
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
#set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]
#set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { LED[8] }]; #IO_L16N_T2_A15_D31_14 Sch=led[8]
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { LED[9] }]; #IO_L14N_T2_SRCC_14 Sch=led[9]
#set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { LED[10] }]; #IO_L22P_T3_A05_D21_14 Sch=led[10]
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { LED[11] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=led[11]
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { LED[12] }]; #IO_L16P_T2_CSI_B_14 Sch=led[12]
#set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { LED[13] }]; #IO_L22N_T3_A04_D20_14 Sch=led[13]
#set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { LED[14] }]; #IO_L20N_T3_A07_D23_14 Sch=led[14]
#set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { LED[15] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=led[15]


#Now, FPGA is acting as slave

## SPI Clock (SCK)
set_property PACKAGE_PIN H4 [get_ports SCLK]
set_property IOSTANDARD LVCMOS33 [get_ports SCLK]

## SPI Chip Select (CS)
set_property PACKAGE_PIN G3 [get_ports SS]
set_property IOSTANDARD LVCMOS33 [get_ports SS]

set_property PACKAGE_PIN F3 [get_ports MISO]
set_property IOSTANDARD LVCMOS33 [get_ports MISO]

set_property PACKAGE_PIN H2 [get_ports {MOSI}]
set_property IOSTANDARD LVCMOS33 [get_ports {MOSI}]
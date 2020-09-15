### This file is a general .xdc for the Nexys Video Rev. A
### To use it in a project:
### - uncomment the lines corresponding to used pins
### - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

set_property CONFIG_MODE SPIx4 [current_design]

## Clock Signal
create_clock -add -name sys_clk_pin -period 5.00 [get_ports sys_clk_p];

## Clock Signal
set_property -dict { PACKAGE_PIN AD11  IOSTANDARD LVDS     } [get_ports { sysclk_n }]; #IO_L12N_T1_MRCC_33 Sch=sysclk_n
set_property -dict { PACKAGE_PIN AD12  IOSTANDARD LVDS     } [get_ports { sysclk_p }]; #IO_L12P_T1_MRCC_33 Sch=sysclk_p

set_property -dict { PACKAGE_PIN R19   IOSTANDARD LVCMOS33 } [get_ports { cpu_resetn }]; #IO_0_14 Sch=cpu_resetn

set_property -dict { PACKAGE_PIN W23   IOSTANDARD LVCMOS33 } [get_ports { blink_led }]; #IO_L20P_T3_A08_D24_14 Sch=led[7]

# ----------------------------------------------------------------------------
## HDMI out
# JB P2:1 - D2; P4:3 - D1; P8:7 - D0; P10:9 - clk
# ----------------------------------------------------------------------------

set_property -dict {PACKAGE_PIN V30 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_n[0]}];  #JB/2
set_property -dict {PACKAGE_PIN V29 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_p[0]}];  #JB/1
set_property -dict {PACKAGE_PIN W26 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_n[1]}];  #JB/4
set_property -dict {PACKAGE_PIN V25 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_p[1]}];  #JB/3
set_property -dict {PACKAGE_PIN U25 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_n[2]}];  #JB/8
set_property -dict {PACKAGE_PIN T25 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_p[2]}];  #JB/7
set_property -dict {PACKAGE_PIN U23 IOSTANDARD TMDS_33} [get_ports hdmi_tx_clk_n];   #JB/1
set_property -dict {PACKAGE_PIN U22 IOSTANDARD TMDS_33} [get_ports hdmi_tx_clk_p];   #JB/9

# JA P2:1 - D5; P4:3 - D4; P8:7 - D3;#set_property -dict { PACKAGE_PIN T10   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_n[3] }]; #IO_L5N_T0_34 Sch=hdmi_tx_n[3]
set_property -dict {PACKAGE_PIN U28 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_n[3]}];  #JA/2
set_property -dict {PACKAGE_PIN U27 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_p[3]}];  #JA/1
set_property -dict {PACKAGE_PIN T27 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_n[4]}];  #JA/4
set_property -dict {PACKAGE_PIN T26 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_p[4]}];  #JA/3
set_property -dict {PACKAGE_PIN T23 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_n[5]}];  #JA/8
set_property -dict {PACKAGE_PIN T22 IOSTANDARD TMDS_33} [get_ports {hdmi_tx_p[5]}];  #JA/7
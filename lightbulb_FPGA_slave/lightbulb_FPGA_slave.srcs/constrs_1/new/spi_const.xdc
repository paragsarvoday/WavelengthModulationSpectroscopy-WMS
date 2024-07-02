## Clock signal
set_property PACKAGE_PIN E3 [get_ports {sysClk}]
set_property IOSTANDARD LVCMOS33 [get_ports {sysClk}]

## User reset
set_property PACKAGE_PIN P17 [get_ports {usrReset}]
set_property IOSTANDARD LVCMOS33 [get_ports {usrReset}]

## LED for validation of data received
set_property PACKAGE_PIN V10 [get_ports {LED1}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED1}]

## SPI Clock Input from Raspberry Pi
set_property PACKAGE_PIN H4 [get_ports {SCLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {SCLK}]

## SPI Slave Select Input from Raspberry Pi
set_property PACKAGE_PIN G3 [get_ports {SS}]
set_property IOSTANDARD LVCMOS33 [get_ports {SS}]

## SPI Data Output to Raspberry Pi (MISO)
set_property PACKAGE_PIN F3 [get_ports {MISO}]
set_property IOSTANDARD LVCMOS33 [get_ports {MISO}]

## SPI Data Input to the FPGA (MOSI)
set_property PACKAGE_PIN H2 [get_ports {MOSI}]
set_property IOSTANDARD LVCMOS33 [get_ports {MOSI}]


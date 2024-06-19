## Clock signal
set_property PACKAGE_PIN E3 [get_ports WF_CLK]
set_property IOSTANDARD LVCMOS33 [get_ports WF_CLK]

## SPI Clock Out (SCK)
set_property PACKAGE_PIN H4 [get_ports SIGNAL_CLOCK_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports SIGNAL_CLOCK_OUT]

## SPI Chip Select (CS)
set_property PACKAGE_PIN G3 [get_ports SIGNAL_SS_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports SIGNAL_SS_OUT]

## SPI Master Out Slave In (MOSI)
set_property PACKAGE_PIN F3 [get_ports SIGNAL_DATA_OUT]
set_property IOSTANDARD LVCMOS33 [get_ports SIGNAL_DATA_OUT]

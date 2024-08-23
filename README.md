# SPI Communication Between Raspberry Pi and Nexys 4 DDR FPGA

This repository contains implementation files for Serial Peripheral Interface (SPI) based communication between a Raspberry Pi and a Nexys 4 DDR FPGA board. In this setup, the Raspberry Pi functions as the master, while the FPGA board operates as the slave. 

The maximum SPI clock frequency achieved with reliable data transfer is approximately 7 MHz.

## Repository Contents

- **`lockin.ipynb`**: Demonstrates the working of a lock-in amplifier in a simple manner using a Jupyter notebook.
  
- **`FINAL_XDC/`**: Contains an implementation of a lock-in amplifier in Verilog, including internal reference frequency generation.

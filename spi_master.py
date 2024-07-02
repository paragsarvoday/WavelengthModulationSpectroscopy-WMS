import spidev
import time

# Open SPI bus
spi = spidev.SpiDev()
spi.open(0, 0)  # Open bus 0, device 0
spi.max_speed_hz = 8 * (10 ** 6)  # Adjust as needed
spi.mode = 3

def read_spi_data():
    # Send a dummy byte to receive data from the slave
    received_data = spi.xfer2([0x00])
    
    print("*"*25)
    print(f"The received data variable: {received_data}, its data type is {type(received_data)}")
    print("*"*25)
    
    return received_data[0]

try:
    while True:
        data = read_spi_data()
        print(f"Received data: {data:08b}")  # Print as binary
        time.sleep(1)  # Delay between reads

except KeyboardInterrupt:
    spi.close()
    print("SPI communication terminated.")

import spidev
import time

# Open SPI device (bus 0, device 0)
spi = spidev.SpiDev()
spi.open(0, 0)

# Set SPI speed and mode
spi.max_speed_hz = 500000
spi.mode = 0

def receive_data():
    i = 1
    while True:
        # Read a single byte
        data = spi.readbytes(1)
        print(i, end=' ')
        print(f"Received data: {data[0]:08b}")
        time.sleep(0.1)  # Small delay for readability
        i+=1
try:
    receive_data()
except KeyboardInterrupt:
    spi.close()
    print("SPI connection closed.")

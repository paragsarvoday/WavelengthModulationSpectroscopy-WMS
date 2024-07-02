import spidev
import time
import csv
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

# Initialize SPI
spi = spidev.SpiDev()
spi.open(0, 0)  # Open bus 0, device 0
spi.max_speed_hz = 7 * (10 ** 6)

# Data storage
data = []
timestamps = []

# CSV file setup
csv_file = 'spi_data.csv'
with open(csv_file, mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Timestamp', 'Data'])

# Function to read SPI data
def read_spi_data():
    adc = spi.xfer2([0x00])
    return adc[0]

# Real-time plot setup
plt.style.use('fivethirtyeight')
fig, ax = plt.subplots()
xdata, ydata = [], []
ln, = plt.plot([], [], 'b-', animated=True)

def init():
    ax.set_xlim(0, 10)
    ax.set_ylim(0, 150)
    return ln,

def update(frame):
    timestamp = time.time()
    value = read_spi_data()
    
    # Store data
    data.append(value)
    timestamps.append(timestamp)
    
    # Print data
    print(f"Timestamp: {timestamp}, Data: {value}")
    
    # Save data to CSV
    with open(csv_file, mode='a', newline='') as file:
        writer = csv.writer(file)
        writer.writerow([timestamp, value])
    
    # Update plot data
    xdata.append(timestamp)
    ydata.append(value)
    ln.set_data(xdata, ydata)
    
    # Adjust plot limits if needed
    ax.set_xlim(max(0, timestamp - 10), timestamp)
    return ln,

ani = FuncAnimation(fig, update, init_func=init, blit=True, interval=100)

# Show plot
plt.show()

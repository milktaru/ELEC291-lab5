import time
import serial
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import sys, time, math

xsize=100

# configure the serial port
ser = serial.Serial(
    port='COM6',
    baudrate=115200,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_TWO,
    bytesize=serial.EIGHTBITS
)
ser.isOpen()

def data_gen():
    t = data_gen.t
    amp_ref = 0  # Initialize variables here
    freq_ref = 0
    amp_measured = 0
    freq_measured = 0
    phase_measured = 0
    while True:
        t+=1
        # Read a line from the serial port
        line = ser.readline().decode().strip()

        print("Received line:", line)  # Print the received line for debugging

        if line.startswith('\n'):
            # If it starts with '\n', remove the first character
            line = line[1:]

        # Split the line to extract values
        try:
            key, value = line.split(':')
            key = key.strip()
            value = float(value.strip())  # Convert value to float
        except ValueError:
            print("Error: Unable to split line into key-value pair:", line)
            continue  # Skip processing this line

        #if len(values) == 2:
            #key, value = values
        if key == 'Reference Frequency':
            freq_ref = float(value)
        elif key == 'Reference Amplitude':
            amp_ref = float(value)
        elif key == 'Measured Frequency':
            freq_measured = float(value)
        elif key == 'Measured Amplitude':
            amp_measured = float(value)
        elif key == 'Relative Phase':
            phase_measured = float(value)
        
        val_ref=amp_ref*math.sin(t*2.0*3.1415*freq_ref)  
        val_other=amp_measured*math.sin(t*2.0*np.pi*freq_measured + (phase_measured)*np.pi/180)
        # yield t, freq_ref, amp_ref, freq_measured, amp_measured, phase_measured
        yield t, val_ref, val_other

def run(data):
    # update the data
    t, val_ref, val_other = data
    if t > -1:
        xdata.append(t)
        val_ref_data.append(val_ref)
        val_other_data.append(val_other)
        if t > xsize:  # Scroll to the left.
            ax.set_xlim(max(0, t - 30), t)
        line_val_ref.set_data(xdata, val_ref_data)
        line_val_other.set_data(xdata, val_other_data)

        return line_val_ref, line_val_other

def on_close_figure(event):
    sys.exit(0)

data_gen.t = -1
fig = plt.figure()
fig.canvas.mpl_connect('close_event', on_close_figure)
ax = fig.add_subplot(111)
line_val_ref, = ax.plot([], [], lw=2, label="Reference Signal")
line_val_other, = ax.plot([], [], lw=2, label="Other Signal")
ax.set_ylim(-3.0, 3.0)  # Adjusted the y-limit to better visualize sine waves
ax.set_xlim(0, xsize)
ax.grid()
ax.legend()
ax.set_ylabel('Values')
ax.set_xlabel('Time')
xdata, val_ref_data, val_other_data = [], [], []

ani = animation.FuncAnimation(fig, run, data_gen, blit=False, interval=100, repeat=False)
plt.show()

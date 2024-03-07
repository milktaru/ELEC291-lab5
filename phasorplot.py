import time
import serial
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import sys, time, math

xsize=100

# configure the serial port
ser = serial.Serial(
    port='COM3',
    baudrate=115200,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_TWO,
    bytesize=serial.EIGHTBITS
)
ser.isOpen()

def data_gen():
    t = data_gen.t
    while True:
       t+=1
        # Read a line from the serial port
        line = ser.readline().decode().strip()
        # Split the line to extract values
        values = line.split(':')
        if len(values) == 2:
            key, value = values
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
       yield t, freq_ref, amp_ref, freq_measured, amp_measured, phase_measured

def run(data):
    # update the data
    t, freq_ref, amp_ref, freq_measured, amp_measured, phase_measured = data
    if t>-1:
        xdata.append(t)
        freq_ref_data.append(freq_ref)
        amp_ref_data.append(amp_ref)
        freq_measured_data.append(freq_measured)
        amp_measured_data.append(amp_measured)
        phase_measured_data.append(phase_measured)
        if t>xsize: # Scroll to the left.
            ax.set_xlim(t-xsize, t)
        line_freq_ref.set_data(xdata, freq_ref_data)
        line_amp_ref.set_data(xdata, amp_ref_data)
        line_freq_measured.set_data(xdata, freq_measured_data)
        line_amp_measured.set_data(xdata, amp_measured_data)
        line_phase_measured.set_data(xdata, phase_measured_data)

        return line_freq_ref, line_amp_ref, line_phase_ref, line_freq_measured, line_amp_measured, line_phase_measured

data_gen.t = -1
fig = plt.figure()
fig.canvas.mpl_connect('close_event', on_close_figure)
ax = fig.add_subplot(111)
line_freq_ref, = ax.plot([], [], lw=2, label="Frequency (Ref)")
line_amp_ref, = ax.plot([], [], lw=2, label="Amplitude (Ref)")
line_phase_ref, = ax.plot([], [], lw=2, label="Phase (Ref)")
line_freq_measured, = ax.plot([], [], lw=2, label="Frequency (Measured)")
line_amp_measured, = ax.plot([], [], lw=2, label="Amplitude (Measured)")
line_phase_measured, = ax.plot([], [], lw=2, label="Phase (Measured)")
ax.set_ylim(0, 100)
ax.set_xlim(0, xsize)
ax.grid()
ax.legend()
ax.set_ylabel('Values')
ax.set_xlabel('Time (Half-seconds)')
xdata, freq_ref_data, amp_ref_data, phase_ref_data = [], [], [], []
freq_measured_data, amp_measured_data, phase_measured_data = [], [], []

ani = animation.FuncAnimation(fig, run, data_gen, blit=False, interval=100, repeat=False)
plt.show()

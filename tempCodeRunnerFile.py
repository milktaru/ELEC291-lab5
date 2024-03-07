    # Read a line from the serial port
            line = ser.readline().decode().strip()
            # Split the line to extract values
            values = line.split(': ')
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
            val_ref=amp_ref*math.sin(t*2.0*3.1415*freq_ref)  
            val_other=amp_measured*math.sin(t*2.0*np.pi()*freq_measured + (phase_measured)*np.pi()/180)
            # yield t, freq_ref, amp_ref, freq_measured, amp_measured, phase_measured
            yield t, val_ref, val_other
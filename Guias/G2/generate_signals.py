#Routines to generate some common signals
import numpy as np
from scipy import fft, signal

# Function to generate an impulse signal
def generate_impulse(amplitude, sample_rate, duration, position):
    # amplitude: Amplitude
    # sample_rate: Assumed sampling rate in Hz
    # duration: Duration of the signal in seconds
    # position: Position of impulse. Value between 0 to 1. The impulse will be positioned in the index closer to duration*position    
    x = np.linspace(0, duration, round(sample_rate * duration), endpoint=False)  
    y = amplitude*signal.unit_impulse(x.size,round(sample_rate*duration*position))
    return x, y

# Function to generate a square signal
def generate_square_pulse(amplitude, sample_rate, duration, position, width):
    # amplitude: Amplitude
    # sample_rate: Assumed sampling rate in Hz
    # duration: Duration of the signal in seconds
    # position: Position of impulse. Value between 0 to 1. The impulse will be positioned in the index closer to duration*position
    # width: Width of the pulse. Value between 0 to 1. The width will be duration*width. It is like a duty-cycle 
    #        for a periodic square signal
    x = np.linspace(0, duration, round(sample_rate * duration), endpoint=False)
    y = amplitude*np.ones(x.size)
    x_aux = x-position*duration
    if duration*position+duration*width >= duration:
        print('The square signal is not totally contained in the chose interval')
        left_to_start = x_aux < 0
        y[left_to_start] = 0
    else:
        left_to_start = x_aux < 0
        x_aux2 = x-position*duration-width*duration
        right_to_pulse = x_aux2 >= 0
        y[right_to_pulse]=0
        y[left_to_start]=0
    return x, y


# Function to generate a periodic square wave
def generate_square_wave(amplitude, freq, sample_rate, duration, duty_cycle):
    # amplitude: Amplitude
    # freq: Frequecy of square wave in Hz
    # sample_rate: Assumed sampling rate in Hz
    # duration: Duration of the signal in seconds
    # duty_cycle: Duty cycle 
    x = np.linspace(0, duration, round(sample_rate * duration), endpoint=False)
    y = amplitude*signal.square(2 * np.pi * freq * x, duty_cycle)
    return x, y

# Function to generate a periodic sawtooth wave
def generate_sawtooth_wave(amplitude, freq, sample_rate, duration, width):
    # amplitude: Amplitude
    # freq: Frequecy of square wave in Hz
    # sample_rate: Assumed sampling rate in Hz
    # duration: Duration of the signal in seconds
    # width: Width of the rising ramp as a proportion of the total cycle. 
    # 1 produces a rising ramp, while 0 produces a falling ramp. width = 0.5 produces a triangle wave.
    x = np.linspace(0, duration, round(sample_rate * duration), endpoint=False)
    y = amplitude*signal.sawtooth(2 * np.pi * freq * x, width)
    return x, y

# Function to generate a chirp signal
def generate_chirp_wave(amplitude, freq1, freq2, t2_freq2, sample_rate, duration, method, phi):
    # amplitude: Amplitude
    # freq1: Initial frequency in Hz
    # freq2: Frequency in Hz at time t2_freq2
    # t2_freq2: Time at which is specified freq2. Value between 0 and 1 and the actual time in seconds is t2_freq2*duration
    # sample_rate: Assumed sampling rate
    # duration: Duration of the signal in seconds
    # phi: Initial phase (in degrees)
    # method: Mathematical variation of frequency. Can be 'linear', 'quadratic', 'logarithmic' or 'hyperbolic'
    # The function returns cos(phase + (pi/180)*phi) where phase is the integral (from 0 to t) of 2*pi*f(t). f(t) is given by method
    x = np.linspace(0, duration, round(sample_rate * duration), endpoint=False)
    y = amplitude*signal.chirp(x, freq1, t2_freq2*duration, freq2, method=method, phi=phi)
    return x, y

# Function to generate a modulated gaussian pulse
def generate_gaussian_pulse(amplitude, freq, bw, bwr, sample_rate, duration):
    # amplitude: Amplitude
    # freq: Modulating frequecy in Hz
    # bw: Fractional bandwidth in Hz of gaussian pulse in frequency domain
    # bwr: Reference level at which fractional bandwidth is calculated (dB).
    # sample_rate: Assumed sampling rate in Hz
    # duration: Duration of the signal in seconds
    # Return in-phase and in-quadrature components. It also return the envelope
    # Return a Gaussian modulated sinusoid:
    # exp(-a t^2) exp(1j*2*pi*freq*t) in [-duration, duration]
    x = np.linspace(-duration, duration, round(sample_rate * duration), endpoint=False)
    yI, yQ, e = signal.gausspulse(x, fc=freq, bw=bw, bwr=bwr, tpr=-60, retquad=True, retenv=True)
    yI = amplitude * yI
    yQ = amplitude * yQ
    e = amplitude * e
    return x, yI, yQ, e



#Function to generate sine signals
def generate_sine(amplitude,freq, sample_rate, duration, phase):
    # amplitude: Amplitude
    # freq: Frequency in Hz
    # sample_rate: Assumed sampling rate in Hz
    # duration: Duration of the signal in seconds
    # phase: Phase in radians    
    x = np.linspace(0, duration, round(sample_rate * duration), endpoint=False) 
    y = amplitude*np.sin((2 * np.pi) * x * freq + phase)
    return x, y

#Function to generate exponential complex signals
def generate_complex_exponential(amplitude,freq, sample_rate, duration, phase):
    # amplitude: Amplitude
    # freq: Frequency in Hz
    # sample_rate: Assumed sampling rate in Hz
    # duration: Duration of the signal in seconds
    # phase: Phase in radians
    x = np.linspace(0, duration, round(sample_rate * duration), endpoint=False) 
    y = amplitude*(np.cos((2 * np.pi) * x * freq + phase) + 1j * np.sin((2 * np.pi) * x * freq + phase))
    return x, y

#Function to generate right exponential signals
def generate_right_exponential(amplitude,alpha, sample_rate, duration, position):
    # amplitude: Amplitude
    # alpha: Exponent scaling (positive for increasing signal). For alpha=0 we have the step function
    # sample_rate: Assumed sampling rate in Hz
    # duration: Duration of the signal in seconds
    # position: Position of impulse. Value between 0 a 1. The start of exponential will be positioned in the index closer 
    #           to duration*position 
    x = np.linspace(0, duration, round(sample_rate * duration), endpoint=False) 
    x_aux=x-position*duration
    left_to_start = x_aux<0     #Points to the left of start time are true
    right_to_start = x_aux>0    #Points to the right of start time are true
    if alpha < 0:
        x_aux[left_to_start] = float('inf')
        y = amplitude*np.exp(alpha * x_aux)
    elif alpha > 0:
        x_aux[left_to_start] = float('-inf')
        y = amplitude*np.exp(alpha * x_aux)
    else:
        x_aux[left_to_start] = float('-inf')
        x_aux[right_to_start] = 0
        y = amplitude*np.exp(x_aux)
    return x, y

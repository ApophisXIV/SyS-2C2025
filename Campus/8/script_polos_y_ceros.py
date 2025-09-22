import numpy as np
import matplotlib.pyplot as plt
from scipy.signal import ZerosPolesGain, freqz_zpk, impulse, lfilter, zpk2tf
import tkinter as tk
import cmath

########################################
########################################
########################################
zero_mags = 1
zero_phase = np.pi/8

pole_mags = 0.9
pole_phase = 0.25*np.pi

fs = 500
f_cos = fs/16
########################################
########################################
########################################




zeros = [cmath.rect(zero_mags, zero_phase), cmath.rect(zero_mags, 2*np.pi-zero_phase)]
poles = [cmath.rect(pole_mags, pole_phase), cmath.rect(pole_mags, 2*np.pi-pole_phase)]

fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 10))
ax1.scatter(np.real(zeros), np.imag(zeros), marker='o', s=80, color='blue', label=f'Ceros (Fase: {zero_phase/np.pi:.2f}π)')
ax1.scatter(np.real(poles), np.imag(poles), marker='x', s=80, color='red', label=f'Polos (Fase: {pole_phase/np.pi:.2f}π)')
theta = np.linspace(0, 2 * np.pi, 300)
unit_circle = np.exp(1j * theta)
ax1.plot(np.real(unit_circle), np.imag(unit_circle), 'g--', alpha=0.5 ,label='Circulo Unitario')

ax1.axhline(0, color='black', lw=1)
ax1.axvline(0, color='black', lw=1)
ax1.set_xlabel('Re')
ax1.set_ylabel('Im')
ax1.set_title('Diagrama de Polos y Ceros')
ax1.legend()
ax1.grid()
ax1.axis('equal')

for zero in zeros:
    angle = np.angle(zero)
    if angle<0:
        angle = 2*np.pi+angle
    ax2.axvline(angle, color='blue', linestyle='--')

for pole in poles:
    angle = np.angle(pole)
    if angle<0:
        angle = 2*np.pi+angle
    ax2.axvline(angle, color='red', linestyle='--')

sys = ZerosPolesGain(zeros, poles, 1)
w, h = freqz_zpk(sys.zeros, sys.poles, sys.gain)
w_extended = np.concatenate((w, w + np.pi))
h_extended = np.concatenate((h, np.flip(h)))

ax2.plot(w_extended, abs(h_extended), linewidth=3)
ax2.set_ylabel('Magnitud')
ax2.set_xlim([0,2*np.pi])
ax2.set_ylim(bottom=0)
ax2.set_xticks([0, np.pi/4, np.pi/2, 3*np.pi/4, np.pi, 5*np.pi/4, 3*np.pi/2, 7*np.pi/4, 2*np.pi])
ax2.set_xticklabels(['0', r'$\frac{\pi}{4}$', r'$\frac{\pi}{2}$', r'$\frac{3\pi}{4}$', r'$\pi$', r'$\frac{5\pi}{4}$', r'$\frac{3\pi}{2}$', r'$\frac{7\pi}{4}$', r'$2\pi$'])

ax2.grid()

fig.tight_layout()

dt = 1
t = np.arange(0, dt, 1/fs)
input_cos = np.cos(2 * np.pi * f_cos * t)

num, den = zpk2tf(sys.zeros, sys.poles, sys.gain)

t_imp, h_imp = impulse((num, den), T=t)
output_signal = lfilter(num, den, input_cos)

fig, (ax3, ax4, ax5) = plt.subplots(3, 1, figsize=(10, 10))

ax3.plot(h_imp)
ax3.set_title('Respuesta al impulso')
ax3.grid()

ax4.plot(input_cos)
ax4.set_title('Coseno')
ax4.grid()

ax5.plot(np.real(output_signal), color='orange')
ax5.set_title('Output')
ax5.grid()

fig.tight_layout()
plt.show()
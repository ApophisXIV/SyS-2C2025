import numpy as np
import matplotlib.pyplot as plt

INITIAL_VALUE = -10
END_VALUE = 10
T_ON = 1


def u(t):
    return t >= 0


def pulse(t, t_on):
    return u(t) ^ u(t - t_on)


def pulse_train(t, T, t_on):
    value = np.zeros_like(t)
    for i in range(INITIAL_VALUE, END_VALUE):
        value += pulse(t - i * T, t_on)
    return value


def square_wave(t, T):
    signal = 2 * pulse_train(t, T, T / 2)
    return signal - np.mean(signal)


def derivate_continous_time(t, signal):
    value = np.zeros_like(t)
    for i in range(0, len(t) - 1):
        value[i] = (signal[i + 1] - signal[i]) / (t[i + 1] - t[i])
    return value


def derivate_discrete_time(t, signal):
    value = np.zeros_like(t)
    for i in range(0, len(t) - 1):
        value[i] = signal[i + 1] - signal[i]
    return value


t = np.linspace(INITIAL_VALUE, END_VALUE, 50000)
# s = 3 * pulse_train(t, 2, 1) - 2
s = (0.5)**t * u(t - 3)

# s = np.sin(t)
plt.figure(figsize=(10, 4))
plt.plot(t, s, label="x(t)", color="b")
plt.plot(t, derivate_discrete_time(t, s), label="x'(t)", color="r")
plt.title("Señal x(t) usando escalones unitarios")
plt.xlabel("Tiempo t")
plt.ylabel("x(t)")
plt.grid(True)
plt.axhline(0, color="black", linewidth=0.5)
plt.axvline(0, color="black", linewidth=0.5)
plt.legend()
plt.show()

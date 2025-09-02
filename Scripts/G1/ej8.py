import numpy as np
import matplotlib.pyplot as plt
from scipy.interpolate import interp1d

NOISE_THERESHOLD = 1e-12

def filter_rounding_noise(noisy_signal:np.ndarray) -> np.ndarray:
  return np.where(np.abs(noisy_signal) < NOISE_THERESHOLD, 0, noisy_signal)

def get_even_signal_components(original_signal: np.ndarray) -> np.ndarray:
    even_component =  np.array((original_signal + np.flip(original_signal)) / 2)
    return filter_rounding_noise(even_component)

def get_odd_signal_components(original_signal: np.ndarray) -> np.ndarray:
    odd_component =  (original_signal - np.flip(original_signal)) / 2
    return filter_rounding_noise(odd_component)

def plot_signal_components(original_signal: np.ndarray):
    even_signal = get_even_signal_components(original_signal)
    odd_signal = get_odd_signal_components(original_signal)

    plt.figure(figsize=(12, 6))
    
    plt.subplot(1, 3, 1)
    plt.plot(original_signal, label='Original Signal', color='blue')
    plt.title('Original Signal')
    plt.grid()
    
    plt.subplot(1, 3, 2)
    plt.plot(even_signal, label='Even Component', color='green')
    plt.title('Even Component')
    plt.grid()
    
    plt.subplot(1, 3, 3)
    plt.plot(odd_signal, label='Odd Component', color='red')
    plt.title('Odd Component')
    plt.grid()
    
    plt.tight_layout()
    plt.show()
    
if __name__ == "__main__":
    t = np.linspace(-4,4, 1000)  # Simetría en el dominio
 
    # (1/2)^n * u(n-3)
    # sgn = (0.5)**t * (np.heaviside(t - 3, 1))
    sgn = np.exp(-5*t) * (np.heaviside(t + 2, 1))
    plot_signal_components(sgn)

    # original_signal = np.sin(t)  # Señal impar
    # plot_signal_components(original_signal)
    
    # original_signal = np.cos(t)  # Señal par
    # plot_signal_components(original_signal)
    
    # original_signal = np.sin(t) + 3* np.random.rand(len(t))  # Señal impar con ruido
    # plot_signal_components(original_signal)
    
    # # Puntos clave de la señal
    # key_points_t = np.array([-2, -1, 0, 1, 2])
    # key_points_y = np.array([0, 1, 0, 1, 1])

    # # Crear una función de interpolación lineal
    # interp_func = interp1d(key_points_t, key_points_y, kind='linear')

    # # Generar t continuo en el mismo intervalo
    # t = np.linspace(-2, 2, 500)
    # original_signal = interp_func(t)

    # plot_signal_components(original_signal)
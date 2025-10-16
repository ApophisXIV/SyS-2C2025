from wav import Wav
import numpy as np

# from plot import plot_with_zoom, plot_horizontal_stack
from signal import Signal
import matplotlib.pyplot as plt

if __name__ == "__main__":

    # ---------------------------------------------------------------------------- #
    #                       Parte 1 : Graficos en frecuencia                       #
    # ---------------------------------------------------------------------------- #

    cancion1_wav = Wav("Assets/cancion1.wav")

    cancion1 = Signal(
        "Señal cancion 1",
        cancion1_wav.data,
        cancion1_wav.time,
        cancion1_wav.sample_rate,
    )

    cancion2_wav = Wav("Assets/cancion2.wav")
    cancion2_wav.metadata()
    cancion2 = Signal(
        "Señal cancion 2",
        cancion2_wav.data,
        cancion2_wav.time,
        cancion2_wav.sample_rate,
    )

    # Plot FFT Magnitude and Phase for Cancion 1 - Log scale (y), plot stem
    fig, axs = plt.subplots(2, 1, figsize=(10, 8))
    freq1, magnitude1 = cancion1.fft_magnitude(absolute=False)
    freq1_phase, phase1 = cancion1.fft_phase()
    markerline, stemlines, baseline = axs[0].stem(freq1, magnitude1, label="Magnitud")
    axs[0].set_title("FFT Magnitud - Cancion 1")
    axs[0].set_ylabel("|X(f)|")
    axs[0].legend()
    axs[0].grid(True)
    plt.setp(stemlines, 'color', 'b', 'linewidth', 0.35)
    plt.setp(markerline, 'color', 'r', 'markersize', 1)

    markerline, stemlines, baseline = axs[1].stem(freq1_phase, phase1, label="Fase", linefmt='g-', markerfmt='go', basefmt=" ")
    axs[1].set_title("FFT Fase - Cancion 1")
    axs[1].set_ylabel("arg(f)")
    axs[1].legend()
    axs[1].grid(True)
    plt.setp(stemlines, 'color', 'b', 'linewidth', 0.35)
    plt.setp(markerline, 'color', 'r', 'markersize', 1)
    
    
    
    
    
    # ---------------------------------------------------------------------------- #
    #                        Parte 2 : Filtrado de la señal                        #
    # ---------------------------------------------------------------------------- #

    # filtro_1 = open("Assets/respuesta_impulso_1.txt", "r")
    # h1 = list(map(float, filtro_1.readlines()))
    # h1_filtro = Signal(
    #     label="Filtro 1",
    #     data=h1,
    #     time=[i / cancion1_wav.sample_rate for i in range(len(h1))],
    #     sample_rate=cancion1_wav.sample_rate,
    # )
    # filtro_1.close()

    # filtro_2 = open("Assets/respuesta_impulso_2.txt", "r")
    # h2 = list(map(float, filtro_2.readlines()))
    # h2_filtro = Signal(
    #     label="Filtro 2",
    #     data=h2,
    #     time=[i / cancion1_wav.sample_rate for i in range(len(h2))],
    #     sample_rate=cancion1_wav.sample_rate,
    # )
    # filtro_2.close()

    # ------------------------ Cancion 1 con filtro 1 y 2 ------------------------ #
    # cancion_1_filtro_1 = cancion1.convolve(h1_filtro)
    # cancion_1_filtro_2 = cancion1.convolve(h2_filtro)

    # ------------------------ Cancion 2 con filtro 1 y 2 ------------------------ #
    # cancion_2_filtro_1 = cancion2.convolve(h1_filtro)
    # cancion_2_filtro_2 = cancion2.convolve(h2_filtro)

    # ---------------------------------------------------------------------------- #
    #                  Parte 3 : Analisis mediante espectrogramas                  #
    # ---------------------------------------------------------------------------- #

    # ---------------------------------------------------------------------------- #
    #      Parte 4 : "La4" en 3 instrumentos y su representacion en frecuencia     #
    # ---------------------------------------------------------------------------- #

    # sine_wav = Wav("Assets/sine_440.wav")
    # triangle_wav = Wav("Assets/triangle_440.wav")
    # square_wav = Wav("Assets/square_440.wav")

    # sine_signal = Signal("Seno 440Hz", sine_wav.data, sine_wav.time, sine_wav.sample_rate)
    # triangle_signal = Signal("Triangular 440Hz", triangle_wav.data, triangle_wav.time, triangle_wav.sample_rate)
    # square_signal = Signal("Cuadrada 440Hz", square_wav.data, square_wav.time, square_wav.sample_rate)

    # ---------------------------------------------------------------------------- #
    #                          Parte 5 : Efectos musicales                         #
    # ---------------------------------------------------------------------------- #

    # ---------------------------------------------------------------------------- #
    plt.tight_layout()
    plt.show()

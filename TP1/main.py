from wav import Wav
from plot import plot_with_zoom, plot_horizontal_stack
from signal import Signal
import matplotlib.pyplot as plt

if __name__ == "__main__":

    # ---------------------------------------------------------------------------- #
    #                            Parte 1 : Periodicidad                            #
    # ---------------------------------------------------------------------------- #

    cancion1_wav = Wav("Assets/cancion1.wav")
    print
    cancion1_wav.metadata()

    cancion1 = Signal(
        "Señal cancion 1",
        cancion1_wav.data,
        cancion1_wav.time,
        cancion1_wav.sample_rate,
    )

    plot_with_zoom(
        signal=cancion1,
        zoom_region=[
            {"ymax": 11000, "ymin": -11000, "t0": 1.365, "t1": 1.385, "add_peaks": True, "peaks_distance": 100},
            {"ymax": 16000, "ymin": -16000, "t0": 7.1388, "t1": 7.25, "add_peaks": True, "peaks_distance": 400},
            {"ymax": 8000, "ymin": -6000, "t0": 8.7, "t1": 8.8074, "add_peaks": True, "peaks_distance": 400},
        ],
        zoom_label="Segmento periódico",
        subdivision_grid_x_major=1,
        subdivision_grid_x_minor=0.2,
        zoom_subdivision_grid_x_major=0.01,
        zoom_subdivision_grid_x_minor=0.002,
    )

    cancion2_wav = Wav("Assets/cancion2.wav")
    cancion2_wav.metadata()
    cancion2 = Signal(
        "Señal cancion 2",
        cancion2_wav.data,
        cancion2_wav.time,
        cancion2_wav.sample_rate,
    )

    plot_with_zoom(
        signal=cancion2,
        zoom_region=[
            {"ymax": 9500, "ymin": -9500, "t0": 10.24, "t1": 10.26, "add_peaks": False},
            {"ymax": 6000, "ymin": -6000, "t0": 29.7, "t1": 29.72, "add_peaks": False},
        ],
        zoom_label="Segmento no periódico",
        subdivision_grid_x_major=2,
        subdivision_grid_x_minor=1,
        zoom_subdivision_grid_x_major=0.005,
        zoom_subdivision_grid_x_minor=0.001,
    )

    # ---------------------------------------------------------------------------- #
    #                             Parte 2 : Convolucion                            #
    # ---------------------------------------------------------------------------- #

    filtro_1 = open("Assets/respuesta_impulso_1.txt", "r")
    h1 = list(map(float, filtro_1.readlines()))
    h1_filtro = Signal(
        label="Filtro 1",
        data=h1,
        time=[i / cancion1_wav.sample_rate for i in range(len(h1))],
        sample_rate=cancion1_wav.sample_rate,
    )
    filtro_1.close()

    filtro_2 = open("Assets/respuesta_impulso_2.txt", "r")
    h2 = list(map(float, filtro_2.readlines()))
    h2_filtro = Signal(
        label="Filtro 2",
        data=h2,
        time=[i / cancion1_wav.sample_rate for i in range(len(h2))],
        sample_rate=cancion1_wav.sample_rate,
    )
    filtro_2.close()

    # ------------------------ Cancion 1 con filtro 1 y 2 ------------------------ #
    cancion_1_filtro_1 = cancion1.convolve(h1_filtro)
    cancion_1_filtro_2 = cancion1.convolve(h2_filtro)

    plot_with_zoom(
        signal=cancion_1_filtro_1,
        filter_signal=h1_filtro,
        zoom_region=[
            {"ymax": 11000, "ymin": -11000, "t0": 1.365, "t1": 1.385, "add_peaks": False},
            {"ymax": 16000, "ymin": -16000, "t0": 7.1388, "t1": 7.25, "add_peaks": False},
            {"ymax": 8000, "ymin": -6000, "t0": 8.7, "t1": 8.8074, "add_peaks": False},
        ],
        zoom_label="Segmento periódico - ",
        subdivision_grid_x_major=1,
        subdivision_grid_x_minor=0.2,
        zoom_subdivision_grid_x_major=0.01,
        zoom_subdivision_grid_x_minor=0.002,
    )

    plot_with_zoom(
        signal=cancion_1_filtro_2,
        filter_signal=h2_filtro,
        zoom_region=[
            {"ymax": 11000, "ymin": -11000, "t0": 1.365, "t1": 1.385, "add_peaks": False},
            {"ymax": 16000, "ymin": -16000, "t0": 7.1388, "t1": 7.25, "add_peaks": False},
            {"ymax": 8000, "ymin": -6000, "t0": 8.7, "t1": 8.8074, "add_peaks": False},
        ],
        zoom_label="Segmento periódico",
        subdivision_grid_x_major=1,
        subdivision_grid_x_minor=0.2,
        zoom_subdivision_grid_x_major=0.01,
        zoom_subdivision_grid_x_minor=0.002,
    )

    # ------------------------ Cancion 2 con filtro 1 y 2 ------------------------ #
    cancion_2_filtro_1 = cancion2.convolve(h1_filtro)
    cancion_2_filtro_2 = cancion2.convolve(h2_filtro)

    plot_with_zoom(
        signal=cancion_2_filtro_1,
        filter_signal=h1_filtro,
        zoom_region=[
            {"ymax": 9500, "ymin": -9500, "t0": 10.24, "t1": 10.26, "add_peaks": False},
            {"ymax": 7000, "ymin": -7000, "t0": 29.7, "t1": 29.72, "add_peaks": False},
        ],
        zoom_label="Segmento no periódico - Convolucion con filtro 1",
        subdivision_grid_x_major=2,
        subdivision_grid_x_minor=1,
        zoom_subdivision_grid_x_major=0.005,
        zoom_subdivision_grid_x_minor=0.001,
    )

    plot_with_zoom(
        signal=cancion_2_filtro_2,
        filter_signal=h2_filtro,
        zoom_region=[
            {"ymax": 9500, "ymin": -9500, "t0": 10.24, "t1": 10.26, "add_peaks": False},
            {"ymax": 6000, "ymin": -6000, "t0": 29.7, "t1": 29.72, "add_peaks": False},
        ],
        zoom_label="Segmento no periódico - Convolucion con filtro 2",
        subdivision_grid_x_major=2,
        subdivision_grid_x_minor=1,
        zoom_subdivision_grid_x_major=0.005,
        zoom_subdivision_grid_x_minor=0.001,
    )

    # ---------------------------------------------------------------------------- #
    #                       Parte 3 : "La4" en 3 instrumentos                      #
    # ---------------------------------------------------------------------------- #

    sine_wav = Wav("Assets/sine_440.wav")
    triangle_wav = Wav("Assets/triangle_440.wav")
    square_wav = Wav("Assets/square_440.wav")

    sine_signal = Signal("Seno 440Hz", sine_wav.data, sine_wav.time, sine_wav.sample_rate)
    triangle_signal = Signal("Triangular 440Hz", triangle_wav.data, triangle_wav.time, triangle_wav.sample_rate)
    square_signal = Signal("Cuadrada 440Hz", square_wav.data, square_wav.time, square_wav.sample_rate)

    plot_horizontal_stack([sine_signal, triangle_signal, square_signal], freq=440)

    plt.tight_layout()
    plt.show()

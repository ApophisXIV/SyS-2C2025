"""
  @file main.py
  @author Guido Rodriguez (guerodriguez@fi.uba.ar)
  @version 1.0
  @date 2025-11-04
  @copyright Copyright (c) 2025
"""

from wav import Wav, write_wav
from signal import Signal
from plot import (
    plot_filtered_signal,
    plot_octaves,
    plot_original_signal,
    plot_filters,
    plot_signal_spectrogram,
    plot_signals_spectograms,
    plot_spectorgrams,
    plot_signal_and_cut,
    plot_spectrograms_matrix,
    plot_octaves_spectrogram,
)

import time


def time_start(timer):
    timer[0] = time.time()


def time_end(timer, message="Elapsed time"):
    timer[1] = time.time()
    print(f"{message}: {timer[1]-timer[0]:.4f} seconds")


if __name__ == "__main__":

    timer = [0, 0]
    time_start(timer)

    cancion1_wav = Wav("Assets/cancion1.wav")
    cancion1_wav.metadata()
    cancion1 = Signal("Señal cancion 1", cancion1_wav.data, cancion1_wav.time, cancion1_wav.sample_rate)

    cancion2_wav = Wav("Assets/cancion2.wav")
    cancion2_wav.metadata()
    cancion2 = Signal("Señal cancion 2", cancion2_wav.data, cancion2_wav.time, cancion2_wav.sample_rate)

    time_end(timer, "Carga de archivos WAV y creación de señales")

    # ---------------------------------------------------------------------------- #
    #                       Parte 1 : Graficos en frecuencia                       #
    # ---------------------------------------------------------------------------- #

    # plot_original_signal(cancion1, window_limits=[(0, 2000), (2000, 8000), (8000, 22000)])
    # plot_octaves(cancion1)

    # plot_original_signal(cancion2, window_limits=[(0, 500), (500, 5000), (5000, 22000)])
    # plot_octaves(cancion2)

    # ---------------------------------------------------------------------------- #
    #                        Parte 2 : Filtrado de la señal                        #
    # ---------------------------------------------------------------------------- #

    time_start(timer)
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
    time_end(timer, "Creación de señales de filtro desde archivos de texto")

    # time_start(timer)
    # plot_filters(filters_collection=[(h1_filtro, 0, 1300), (h2_filtro, 3800, 5600)])
    # plot_filtered_signal(cancion1, filters_collection=[(h1_filtro, 0, 1000), (h2_filtro, 4000, 5500)])
    # plot_filtered_signal(cancion2, filters_collection=[(h1_filtro, 0, 1000), (h2_filtro, 4000, 5500)])
    # time_end(timer, "Ploteo de señal filtrada con filtro 1")

    # ---------------------------------------------------------------------------- #
    #                  Parte 3 : Analisis mediante espectrogramas                  #
    # ---------------------------------------------------------------------------- #
    time_start(timer)
    # for w_size in [2048],:

    # plot_octaves_spectrogram(f"ventana_ancha_cancion1_{8192}_o{7680}", cancion1, "hann", 8192, 7680)
    # plot_spectorgrams(
    #     signal  = {"src": cancion1, "window": "hann", "size": 2048, "overlap": 512},
    #     filters = [
    #         {"filter": h1_filtro, "window": "hann", "size": 2048, "overlap": 512},
    #         {"filter": h2_filtro, "window": "hann", "size": 2048, "overlap": 512},
    #     ],
    # )
    # plot_spectorgrams(
    #     signal={"src": cancion2, "window": "hann", "size": 2048, "overlap": 512},
    #     filters=[
    #         {"filter": h1_filtro, "window": "hann", "size": 2048, "overlap": 512},
    #         {"filter": h1_filtro, "window": "hann", "size": 2048, "overlap": 512},
    #     ],
    # )
    time_end(timer, "Ploteo de espectrogramas")

    # ---------------------------------------------------------------------------- #
    #      Parte 4 : "La4" en 3 instrumentos y su representacion en frecuencia     #
    # ---------------------------------------------------------------------------- #

    # guitarra_la4 = Wav("Assets/la4_guitarra.wav")
    # guitarra_la4_signal = Signal("Guitarra", guitarra_la4.data, guitarra_la4.time, guitarra_la4.sample_rate)
    # guitarra_cut = guitarra_la4_signal.cut_above(cutoff_frequency=1000)
    # write_wav("Assets/guitarra_cut.wav", guitarra_cut.raw_data, guitarra_cut.sample_rate)

    # piano_la4 = Wav("Assets/la4_piano.wav")
    # piano_la4_signal = Signal("Piano", piano_la4.data, piano_la4.time, piano_la4.sample_rate)
    # piano_cut = piano_la4_signal.cut_above(cutoff_frequency=600)
    # write_wav("Assets/piano_cut.wav", piano_cut.raw_data, piano_cut.sample_rate)

    # plot_signal_and_cut(guitarra_la4_signal, guitarra_cut)
    # plot_signal_and_cut(piano_la4_signal, piano_cut)

    # ---------------------------------------------------------------------------- #
    #                          Parte 5 : Efectos musicales                         #
    # ---------------------------------------------------------------------------- #
    base = Wav("Assets/base.wav")
    base_signal = Signal("Señal base", base.data, base.time, base.sample_rate)

    tremolo = Wav("Assets/tremolo.wav")
    tremolo_signal = Signal("Señal tremolo", tremolo.data, tremolo.time, tremolo.sample_rate)

    distorsion = Wav("Assets/distorsion.wav")
    distorsion_signal = Signal("Señal distorsion", distorsion.data, distorsion.time, distorsion.sample_rate)

    vibrato = Wav("Assets/vibrato.wav")
    vibrato_signal = Signal("Señal vibrato", vibrato.data, vibrato.time, vibrato.sample_rate)

    chorus = Wav("Assets/chorus.wav")
    chorus_signal = Signal("Señal chorus", chorus.data, chorus.time, chorus.sample_rate)

    delay = Wav("Assets/delay.wav")
    delay_signal = Signal("Señal delay", delay.data, delay.time, delay.sample_rate)

    plot_spectrograms_matrix(
        signals=[
            {"src": base_signal, "window": "hann", "size": 1024, "overlap":512},
            {"src": tremolo_signal, "window": "hann", "size": 1024, "overlap":512},
            {"src": distorsion_signal, "window": "hann", "size": 1024, "overlap":512},
            {"src": vibrato_signal, "window": "hann", "size": 1024, "overlap":512},
            {"src": chorus_signal, "window": "hann", "size": 1024, "overlap":512},
            {"src": delay_signal, "window": "hann", "size": 1024, "overlap":512},
        ],
        nrows       = 3,
        ncols       = 4,
        filename    = "efectos",
        plot_height = 13,
        plot_width  = 24,
        w_space=0.5
    )

    # ---------------------------------------------------------------------------- #
    #                         Parte 6 : Melodia con efectos                        #
    # ---------------------------------------------------------------------------- #
    # base_delay = Wav("Assets/base_delay.wav")
    # base_delay_signal = Signal("Señal base con delay", base_delay.data, base_delay.time, base_delay.sample_rate)

    # base_delay_distorsion = Wav("Assets/base_delay_distorsion.wav")
    # base_delay_distorsion_signal = Signal(
    #     "Señal base con delay y distorsion", base_delay_distorsion.data, base_delay_distorsion.time, base_delay_distorsion.sample_rate
    # )

    # plot_spectrograms_matrix(
    #     signals=[
    #         {"src": base_signal, "window": "hann", "size": 1024, "overlap": 512},
    #         {"src": base_delay_signal, "window": "hann", "size": 1024, "overlap": 512},
    #         {"src": base_delay_distorsion_signal, "window": "hann", "size": 1024, "overlap": 512},
    #     ],
    #     nrows=3,
    #     ncols=2,
    #     plot_height=11,
    #     filename="melodia_con_efecto_delay_distorsion",
    # )

    # ---------------------------------------------------------------------------- #

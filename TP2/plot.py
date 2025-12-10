"""
  @file plot.py
  @author Guido Rodriguez (guerodriguez@fi.uba.ar)
  @version 1.0
  @date 2025-11-04
  @copyright Copyright (c) 2025
"""

from matplotlib import patches
import matplotlib.pyplot as plt
from matplotlib.gridspec import GridSpec
from mpl_toolkits.axes_grid1.inset_locator import TransformedBbox, BboxPatch, BboxConnector, inset_axes

from scipy.signal import spectrogram

import matplotlib

plt.style.use("bmh")
params = {
    "ytick.color": "black",
    "xtick.color": "black",
    "axes.labelcolor": "black",
    "axes.edgecolor": "black",
    "text.usetex": True,
    "font.family": "serif",
    "font.serif": ["Computer Modern Serif"],
    "font.size": 11,
    "path.simplify": False,
    "path.simplify_threshold": 1.0,
}
plt.rcParams.update(params)
matplotlib.use("TkAgg")

lines_color = "blue"
marker_color = lines_color
shadow_color = ("#ff7f1c", 0.86)

labels_size = 15
marker_size = 1

from signal import Signal


# Truco para que las lineas de las cajas de zoom se vean bien
# (https://stackoverflow.com/a/45079266)
def _mark_inset(parent_axes, inset_axes, loc1a=1, loc1b=1, loc2a=2, loc2b=2, **kwargs):
    rect = TransformedBbox(inset_axes.viewLim, parent_axes.transData)

    pp = BboxPatch(rect, **kwargs)
    parent_axes.add_patch(pp)

    p1 = BboxConnector(inset_axes.bbox, rect, loc1=loc1a, loc2=loc1b, **kwargs)
    inset_axes.add_patch(p1)
    p1.set_clip_on(False)
    p2 = BboxConnector(inset_axes.bbox, rect, loc1=loc2a, loc2=loc2b, **kwargs)
    inset_axes.add_patch(p2)
    p2.set_clip_on(False)

    return pp, p1, p2


import numpy as np


def plot_signal_fft_magnitude(
    ax,
    signal,
    label=None,
    xmin=0,
    xmax=None,
    use_ymax=False,
    show_info=True,
    color=marker_color,
    lines_width=0.53,
    marker_size=marker_size,
    fontsize=labels_size,
    ymargin=0.1,
):
    nfreq, data = signal.fft_magnitude()
    if xmin is not None or xmax is not None:
        indices = np.where((nfreq >= xmin if xmin is not None else True) & (nfreq <= xmax if xmax is not None else True))
        nfreq = nfreq[indices]
        data = data[indices]
    ymax = max(data) if max(data) > ax.get_ylim()[1] or use_ymax else ax.get_ylim()[1]

    markerline, stemlines, baseline = ax.stem(nfreq, data, markerfmt="^", label=f"{signal.label if label is None else label}")
    ax.grid(which="both", linestyle="--", lw=0.5)
    ax.tick_params(which="both", direction="in", top=True, right=True, labelsize=fontsize)
    # ax.xaxis.set_major_locator(plt.MaxNLocator(10))
    ax.minorticks_on()
    markerline.set_markersize(marker_size)
    stemlines.set_linewidth(lines_width)
    baseline.set_linewidth(0.5)
    markerline.set_color(color)
    stemlines.set_color(color)

    if show_info:
        ax.set_xlabel("Frecuencia [Hz]", fontsize=fontsize)
        ax.set_ylabel("Magnitud", fontsize=fontsize)
        ax.legend(loc="upper right", facecolor="white", framealpha=0.8, edgecolor="black", fontsize=fontsize)

    ax.margins(x=0.01)
    ax.set_ylim(-ymax * ymargin, ymax * (1 + ymargin))


DO = 16.35
DO_B = 17.32
RE = 18.35
RE_B = 19.45
MI = 20.60
FA = 21.83
FA_B = 23.12
SOL = 24.50
SOL_B = 25.96
LA = 27.50
LA_B = 29.14
SI = 30.87


def notes(n):
    yield {"label": "DO", "value": DO * (2**n)}
    yield {"label": "DO\#", "value": DO_B * (2**n)}
    yield {"label": "RE", "value": RE * (2**n)}
    yield {"label": "RE\#", "value": RE_B * (2**n)}
    yield {"label": "MI", "value": MI * (2**n)}
    yield {"label": "FA", "value": FA * (2**n)}
    yield {"label": "FA\#", "value": FA_B * (2**n)}
    yield {"label": "SOL", "value": SOL * (2**n)}
    yield {"label": "SOL\#", "value": SOL_B * (2**n)}
    yield {"label": "LA", "value": LA * (2**n)}
    yield {"label": "LA\#", "value": LA_B * (2**n)}
    yield {"label": "SI", "value": SI * (2**n)}


def get_marker_size(i):
    if i < 3:  # Fila 1
        return 1.05
    elif i >= 3 and i < 6:  # Fila 2
        return marker_size - (1 - (0.8) ** (i + 1))
    else:  # Fila 3
        return marker_size - (1 - (0.55) ** (i + 1))


def plot_original_signal(original: Signal, window_limits=None):
    canva = plt.figure(figsize=(10, 16))
    canva.subplots_adjust(left=0.05, right=0.95, top=0.965, bottom=0.06, wspace=0.25, hspace=0.35)

    if window_limits is not None:
        for i, (xmin, xmax) in enumerate(window_limits):
            ax = canva.add_subplot(len(window_limits), 1, i + 1)
            plot_signal_fft_magnitude(ax, original, xmin=xmin, xmax=xmax, fontsize=14, color="blue", use_ymax=True)
    else:
        ax = canva.add_subplot(1, 1, 1)
        plot_signal_fft_magnitude(ax, original)

    plt.show()


def plot_octaves(original):
    canva = plt.figure(figsize=(11, 26))
    canva.subplots_adjust(left=0.08, right=0.95, top=0.99, bottom=0.02, wspace=0.25, hspace=0.35)
    octaves_color = "darkorange"
    octaves_color = "blue"
    for i in range(9):
        ax = canva.add_subplot(9, 1, i + 1)
        plot_signal_fft_magnitude(ax, original, label=f"Ventana con escala en Octava {i}", marker_size=get_marker_size(i), color=octaves_color)
        print(f"Octava {i} - markersize = {get_marker_size(i)}")

        ax.set_xlim(DO * (2 ** (i)) * 0.9, SI * (2 ** (i)) * 1.05)
        for note in notes(i):
            ax.axvline(x=note["value"], color="red", ls="solid", lw=0.8)
            ax.text(x=note["value"], y=ax.get_ylim()[1] * 0.6, s=note["label"] + f"-{i}", rotation=90, ha="right", va="top")
    canva.savefig(f"octavas_{original.label}.png", dpi=300)


def plot_with_zoom(original_ax, signals, xmin, xmax):
    # Este inset es para darle el internal padding del zoom del filtro
    # de este le hacemos otro inset adentro para el zoom real
    x0, y0, width, height = 0.15, 0.05, 0.8, 0.75
    ax_inset_aux = inset_axes(
        original_ax,
        width=f"{width*100}%",
        height=f"{height*100}%",
        bbox_to_anchor=(x0, y0, width, height),
        bbox_transform=original_ax.transAxes,
        borderpad=0,
    )
    ax_inset_aux.set_facecolor("white")
    ax_inset_aux.set_xticks([])
    ax_inset_aux.set_yticks([])
    for border in ax_inset_aux.spines.values():
        border.set_edgecolor("red")
        border.set_linewidth(1)
    ax_inset_aux.set_xlim(xmin, xmax)
    ax_inset = inset_axes(ax_inset_aux, width="86%", height="84%", borderpad=1.25)

    for signal, c, lw in signals:
        plot_signal_fft_magnitude(ax_inset, signal, show_info=False, color=c, lines_width=lw, fontsize=14, xmin=xmin, xmax=xmax)

    ax_inset.set_xlim(xmin, xmax)
    ax_inset_aux.set_ylim(ax_inset.get_ylim()[0] * 0.05, ax_inset.get_ylim()[1] * 0.95)
    _mark_inset(original_ax, ax_inset_aux, loc1a=2, loc1b=1, loc2a=3, loc2b=4, fill=True, zorder=5, fc=("red", 0.18), ec=("red", 0.78), lw=1)

    return ax_inset


def plot_filters(filters_collection):
    canva = plt.figure(figsize=(18, 8))
    canva.subplots_adjust(left=0.05, right=0.95, top=0.75, bottom=0.25, wspace=0.15, hspace=0.18)

    c1 = ("#6CD918", 1)

    for i, (filter, xmin, xmax) in enumerate(filters_collection):
        ax_filter = canva.add_subplot(1, len(filters_collection), i + 1)
        plot_signal_fft_magnitude(ax_filter, filter, color=c1, lines_width=1.5)
        plot_with_zoom(ax_filter, [(filter, c1, 2)], xmin, xmax)
    plt.show()


def plot_filtered_signal(signal, filters_collection):
    canva = plt.figure(figsize=(18, 8))
    canva.subplots_adjust(left=0.05, right=0.95, top=0.75, bottom=0.25, wspace=0.15, hspace=0.18)

    c1 = ("#6CD918", 0.3)

    for i, (filter, xmin, xmax) in enumerate(filters_collection):
        filtered = signal.convolve(filter)
        ax_filtered = canva.add_subplot(1, len(filters_collection), i + 1)
        plot_signal_fft_magnitude(ax_filtered, signal)
        plot_signal_fft_magnitude(ax_filtered, filtered, color=c1)
        plot_with_zoom(ax_filtered, [(signal, ("blue", 0.5), 0.25), (filtered, c1, 0.25)], xmin, xmax)

    plt.show()


def _plot_spectrograms(signal, ax, window_name, window_size, window_overlap, color, legend):
    ax.plot([], [], color=color, label=legend)
    f, t, s = spectrogram(signal.np_raw_data, fs=signal.sample_rate, window=window_name, noverlap=window_overlap, nperseg=window_size)
    im = ax.pcolormesh(t, f, 10.0 * np.log10(s + 1e-12), shading="gouraud", cmap="jet")
    ax.grid(which="both", linestyle="-", lw=0.5, alpha=1, color="dimgray")
    ax.tick_params(which="both", direction="in", top=True, right=True, labelsize=labels_size)
    ax.minorticks_on()
    ax.legend(loc="upper right", facecolor="white", framealpha=0.8, edgecolor="black", fontsize=labels_size)
    ax.set_xlabel("Tiempo [s]", fontsize=labels_size)
    ax.set_ylabel("Frecuencia [Hz]", fontsize=labels_size)

    return im


def plot_octaves_spectrogram(filename, original, window_name, window_size, window_overlap):
    canva = plt.figure(figsize=(11, 30))
    canva.subplots_adjust(left=0.08, right=0.95, top=0.99, bottom=0.02, wspace=0.25, hspace=0.25)
    octaves_color = "white"
    for i in range(9):
        ax = canva.add_subplot(9, 1, i + 1)
        im = _plot_spectrograms(original, ax, window_name, window_size, window_overlap, color="black", legend=f"Ventana con escala en Octava {i}")

        ax.set_ylim(DO * (2 ** (i)) * 0.9, SI * (2 ** (i)) * 1.05)
        for note in notes(i):
            ax.axhline(y=note["value"], color="blue", ls="solid", lw=1.5)
            ax.text(
                y=note["value"] * 0.989, x=ax.get_xlim()[1] * 0.4, s=note["label"] + f"-{i}", ha="center", va="top", color="blue", fontweight="bold"
            )
        cbar = canva.colorbar(im, ax=ax, orientation="vertical", fraction=0.04, pad=0.015)
        cbar.set_label("Intensidad [dB]", fontsize=labels_size, labelpad=3, loc="center")
        cbar.ax.tick_params(labelsize=labels_size)

    canva.savefig(f"espectrograma_octavas_{filename}.png", dpi=300)


def _plot_signal_in_time(ax, signal):
    ax.plot(signal._signal["time"], signal._signal["value"], color="blue", lw=0.5)
    ax.set_xlabel("Tiempo [s]", fontsize=labels_size)
    ax.set_ylabel("Amplitud", fontsize=labels_size)
    ax.grid(which="both", linestyle="-", lw=0.5, alpha=1, color="dimgray")
    ax.tick_params(which="both", direction="in", top=True, right=True, labelsize=labels_size)
    ax.minorticks_on()


def plot_spectrograms_matrix(filename, signals, nrows, ncols, cmap="jet", plot_width=12, plot_height=26, w_space=0.3, h_space=0.23):
    # canva = plt.figure(figsize=(18, 8))
    canva = plt.figure(figsize=(plot_width, plot_height))
    canva.subplots_adjust(left=0.1, right=0.93, top=0.95, bottom=0.05, wspace=w_space, hspace=h_space)

    for i, signal_dict in enumerate(signals):
        ax_t = canva.add_subplot(nrows, ncols, (i * 2 + 1))
        ax_f = canva.add_subplot(nrows, ncols, (i * 2 + 2))

        _plot_signal_in_time(ax_t, signal_dict["src"])
        data = signal_dict["src"]
        legend = f"{signal_dict['src'].label}" + f"\nVentana {signal_dict['window']} ancho {signal_dict['size']}"
        im = _plot_spectrograms(
            data,
            ax_f,
            window_name=signal_dict["window"],
            window_size=signal_dict["size"],
            window_overlap=signal_dict["overlap"],
            color="black",
            legend=legend,
        )
        cbar = canva.colorbar(im, ax=ax_f, orientation="vertical", fraction=0.04, pad=0.075)
        cbar.set_label("Intensidad [dB]", fontsize=labels_size, labelpad=5, loc="center")
        cbar.ax.tick_params(labelsize=labels_size)
    canva.savefig(f"{filename}.png", dpi=300)


def plot_spectorgrams(signal, filters, cmap="jet"):
    canva = plt.figure(figsize=(18, 8))
    canva.subplots_adjust(left=0.05, right=0.96, top=0.95, bottom=0.05, wspace=0.2, hspace=0.18)

    signal_src = signal["src"]

    for x, win_name in enumerate([signal["window"]]):
        for y, win_size in enumerate([signal["size"]]):
            for z, filter_dict in enumerate([None] + filters):
                ax = canva.add_subplot(1, len(filters) + 1, z + 1)
                if filter_dict is not None:
                    data = signal_src.convolve(filter_dict["filter"])
                    win_name = filter_dict["window"]
                    win_size = filter_dict["size"]
                    win_overlap = filter_dict["overlap"]
                else:
                    data = signal_src
                    win_overlap = signal["overlap"]

                legend = (
                    f"{signal['src'].label}"
                    + (f" - {filter_dict['filter'].label}" if filter_dict is not None else " - Sin filtro")
                    + f"\nVentana {win_name} ancho {win_size}"
                )

                im = _plot_spectrograms(
                    data, ax, window_name=win_name, window_size=win_size, window_overlap=win_overlap, color="black", legend=legend
                )
                canva.savefig(f"spectrograms/spectrogram_{data.label}_{win_name}_{win_size}_{win_overlap}.png", dpi=300)

                cbar = canva.colorbar(im, ax=ax, orientation="horizontal", fraction=0.04, pad=0.075)
                cbar.set_label("Intensidad [dB]", fontsize=labels_size, labelpad=5, loc="center")
                cbar.ax.tick_params(labelsize=labels_size)
    plt.show()
    # Save figure


def plot_signals_spectograms(signal, filters=None, window={"name": ["hanning"], "size": [2048], "overlap": [1024]}, cmap="jet"):

    canva = plt.figure(figsize=(18, 8))
    canva.subplots_adjust(left=0.05, right=0.96, top=0.95, bottom=0.07, wspace=0.2, hspace=0.18)

    for x, win_name in enumerate(window["name"]):
        for y, win_size in enumerate(window["size"]):
            for z, filter in enumerate([None] + (filters if filters is not None else [])):
                ax = canva.add_subplot(
                    len(window["name"]),
                    len(window["size"]) * (len(filters) + 1 if filters is not None else 1),
                    x * (len(window["size"]) * (len(filters) + 1 if filters is not None else 1))
                    + y * (len(filters) + 1 if filters is not None else 1)
                    + z
                    + 1,
                )
                data = signal

                data = signal if filter is None else signal.convolve(filter)
                # legend = f"{signal.label} - Ventana: {win_name.capitalize()} ancho {win_size}"
                # Label  Señal.... - Filtro... \n Ventana... ancho...
                legend = (
                    f"{signal.label}" + (f" - {filter.label}" if filter is not None else " - Sin filtro") + f"\nVentana {win_name} ancho {win_size}"
                )

                im = _plot_spectrograms(
                    data, ax, window_name=win_name, window_size=win_size, window_overlap=window["overlap"][y], color="black", legend=legend
                )

    cbar = canva.colorbar(im, ax=canva.get_axes(), orientation="vertical", fraction=0.04, pad=0.024)
    cbar.set_label("Intensidad [dB]", fontsize=labels_size, labelpad=5, loc="center")
    cbar.ax.tick_params(labelsize=labels_size)
    # plt.show()
    # Save figure
    canva.savefig(f"spectrograms/spectrogram_{window['name']}_{window['size']}_{window['overlap']}.png", dpi=300)

    # # Plot an spectrogram for each signal with each window and each filter
    # # Each row is a window type and each column is a signal with a filter (or no filter) for each window size/overlap
    # for x, win in enumerate(window):
    #     for y, signal in enumerate(signals):
    #         filters_to_apply = [None] + filter_collection if filter_collection is not None else [None]
    #         for z, filter in enumerate(filters_to_apply):
    #             ax = canva.add_subplot(
    #                 len(window), len(signals) * len(filters_to_apply), x * (len(signals) * len(filters_to_apply)) + y * len(filters_to_apply) + z + 1
    #             )

    #             data = signal if filter is None else signal.convolve(filter)

    #             legend = f"{signal.label} - Ventana: {win['name'].capitalize()} {win['size']} " + (f" - {filter.label}" if filter is not None else "- Sin filtro")
    #             im = _plot_spectrograms(
    #                 data, ax, window_name=win["name"], window_size=win["size"], window_overlap=win["overlap"], color="black", legend=legend
    #             )

    # cbar = canva.colorbar(im, ax=canva.get_axes(), orientation="vertical", fraction=0.04, pad=0.024)
    # cbar.set_label("Intensidad [dB]", fontsize=12, labelpad=5, loc="center")
    # cbar.ax.tick_params(labelsize=12)
    # plt.show()


def plot_signal_spectrogram(signal, filters_collection, window=["rectangular"], nperseg=[2048], noverlap=[1024], cmap="jet"):
    window_type = {
        "rectangular": np.ones,
        "hanning": np.hanning,
        "hamming": np.hamming,
    }

    # Asegurar que las longitudes de nperseg y noverlap coinciden con la de window
    if isinstance(nperseg, int):
        nperseg = [nperseg] * len(window)
    if isinstance(noverlap, int):
        noverlap = [noverlap] * len(window)
    if len(nperseg) != len(window):
        raise ValueError("La longitud de nperseg debe coincidir con la de window")
    if len(noverlap) != len(window):
        raise ValueError("La longitud de noverlap debe coincidir con la de window")

    canva = plt.figure(figsize=(18, 8))
    canva.subplots_adjust(left=0.05, right=0.96, top=0.95, bottom=0.05, wspace=0.2, hspace=0.18)

    for x, window_name in enumerate(window):
        for y, filter in enumerate([None] + filters_collection):
            ax = canva.add_subplot(len(window), len(filters_collection) + 1, x * (len(filters_collection) + 1) + y + 1)

            data = signal.raw_data if filter is None else signal.convolve(filter).raw_data

            _, _, _, im = ax.specgram(
                data,
                NFFT=nperseg[x],
                Fs=signal.sample_rate,
                noverlap=noverlap[x],
                window=window_type[window_name](nperseg[x]),
                cmap=cmap,
            )

            legend = f"{signal.label} - Ventana: {window_name.capitalize()}" + (f" - {filter.label}" if filter is not None else "- Sin filtro")
            ax.plot([], [], color="black", label=legend)

            ax.grid(which="both", linestyle="-", lw=0.5, alpha=1, color="dimgray")
            ax.tick_params(which="both", direction="in", top=True, right=True, labelsize=12)
            ax.minorticks_on()
            ax.legend(loc="upper right", facecolor="white", framealpha=0.98, edgecolor="black", fontsize=12)
            ax.set_xlabel("Tiempo [s]", fontsize=12)
            ax.set_ylabel("Frecuencia [Hz]", fontsize=12)

    cbar = canva.colorbar(im, ax=canva.get_axes(), orientation="vertical", fraction=0.04, pad=0.024)
    cbar.set_label("Intensidad [dB]", fontsize=12, labelpad=5, loc="center")
    cbar.ax.tick_params(labelsize=12)
    plt.show()


def plot_signal_and_cut(signal, cut):
    canva = plt.figure(figsize=(18, 8))
    canva.subplots_adjust(left=0.05, right=0.96, top=0.95, bottom=0.07, wspace=0.2, hspace=0.18)

    ax_original = canva.add_subplot(2, 2, 1)
    ax_cut = canva.add_subplot(2, 2, 3)
    ax_spect_original = canva.add_subplot(2, 2, 2)
    ax_spect_cut = canva.add_subplot(2, 2, 4)

    plot_signal_fft_magnitude(ax_original, signal)
    plot_signal_fft_magnitude(ax_cut, cut)
    w_size, w_ov = 4096, 2048
    _plot_spectrograms(
        signal,
        ax_spect_original,
        window_name="rectangular",
        window_size=w_size,
        window_overlap=w_ov,
        color="black",
        legend=f"{signal.label} - Ventana rectangular ancho {w_size}",
    )
    _plot_spectrograms(
        cut,
        ax_spect_cut,
        window_name="rectangular",
        window_size=w_size,
        window_overlap=w_ov,
        color="black",
        legend=f"{cut.label} - Ventana rectangular ancho {w_size}",
    )

    plt.show()

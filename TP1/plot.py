import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
from matplotlib.ticker import LinearLocator
from matplotlib.gridspec import GridSpec
from mpl_toolkits.axes_grid1.inset_locator import (
    TransformedBbox,
    BboxPatch,
    BboxConnector,
)

from signal import Signal


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
    "font.size": 12,
}
plt.rcParams.update(params)

matplotlib.use("TkAgg")

colors = ["#009500", "blue", "fuchsia"]

# Truco para que las lineas de las cajas de zoom se vean bien
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


# Lista con pares de tiempos para zoomear
def plot_with_zoom(
    signal: Signal,
    zoom_region: [dict, ...],
    zoom_label: str,
    filter_signal=None,
    add_peaks: bool = False,
    peaks_threshold: int = 0,
    subdivision_grid_x_major: float = 1,
    subdivision_grid_x_minor: float = 5,
    zoom_subdivision_grid_x_major: float = 0.01,
    zoom_subdivision_grid_x_minor: float = 0.001,
):

    # ------------------------------ Canvas general ------------------------------ #
    fig = plt.figure(figsize=(14, 6))
    gs = GridSpec(2, len(zoom_region), height_ratios=[1.5, 2], hspace=0.32, wspace=0.25)

    # ------------------------------ Señal completa ------------------------------ #
    ax = fig.add_subplot(gs[0 : len(zoom_region) - 1] if filter_signal is not None else gs[0, :])
    ax.plot(*signal.raw_signal, c=("indigo", 0.86), lw=0.5, label=signal.label)
    ax.set_ylim(-25000, 25000)

    ax.legend(loc="upper right", facecolor="white", framealpha=0.8, edgecolor="black", fontsize=14)
    ax.set_ylabel("Amplitud [int16]")
    ax.set_xlabel("Tiempo [s]")

    # Subdivisiones del grid de la señal completa
    ax.xaxis.set_major_locator(ticker.MultipleLocator(subdivision_grid_x_major))
    ax.xaxis.set_minor_locator(ticker.MultipleLocator(subdivision_grid_x_minor))

    ax.yaxis.set_major_locator(ticker.MultipleLocator(10000))
    ax.yaxis.set_minor_locator(ticker.MultipleLocator(2500))
    ax.grid(which="both", linestyle="--", lw=0.5)
    ax.tick_params(which="both", direction="in", top=True, right=True)
    ax.tick_params(which="minor", length=7)
    ax.tick_params(which="minor", length=4)
    ax.xaxis.set_tick_params(labeltop=False)
    ax.yaxis.set_tick_params(labelright=False)

    # ------------------------------- Señal filtro ------------------------------- #
    if filter_signal is not None:
        ax_filter = fig.add_subplot(gs[0, len(zoom_region) - 1])
        ax_filter.plot(*filter_signal.raw_signal, c=("darkgreen", 0.86), lw=0.75, label=filter_signal.label)
        ax_filter.set_ylim(bottom=-0.1)
        ax_filter.legend(loc="upper right", facecolor="white", framealpha=0.8, edgecolor="black")
        ax_filter.set_ylabel("Amplitud")
        ax_filter.set_xlabel("Tiempo [s]")
        ax_filter.grid(which="both", linestyle="--", lw=0.5)
        ax_filter.tick_params(which="both", direction="in", top=True, right=True)
        ax_filter.tick_params(which="minor", length=7)
        ax_filter.tick_params(which="minor", length=4)
        ax_filter.xaxis.set_tick_params(labeltop=False)
        ax_filter.yaxis.set_tick_params(labelright=False)

    # ----------------------------------- Zoom ----------------------------------- #
    for i, zoom in enumerate(zoom_region):

        t0, t1, add_peaks = zoom.get("t0"), zoom.get("t1"), zoom.get("add_peaks")

        ax_zoom = fig.add_subplot(gs[1, i], xlim=[t0, t1])
        ax_zoom.set_ylim(zoom.get("ymin"), zoom.get("ymax"))

        ax_zoom.xaxis.set_major_locator(ticker.MultipleLocator(zoom_subdivision_grid_x_major))
        ax_zoom.xaxis.set_minor_locator(ticker.MultipleLocator(zoom_subdivision_grid_x_minor))

        ax_zoom.yaxis.set_major_locator(ticker.MultipleLocator(5000))
        ax_zoom.yaxis.set_minor_locator(ticker.MultipleLocator(2500))

        ax_zoom.plot(
            *signal.raw_signal,
            c=colors[i % len(colors)],
            lw=0.65,
            label=zoom_label + f" {t0:.2f} - {t1:.2f} s",
        )
        ax_zoom.grid(which="both", linestyle="--", lw=0.5)

        ax_zoom.tick_params(which="both", direction="in", top=True, right=True)
        ax_zoom.tick_params(which="minor", length=7)
        ax_zoom.tick_params(which="minor", length=4)
        ax_zoom.xaxis.set_tick_params(labeltop=False)
        ax_zoom.yaxis.set_tick_params(labelright=False)

        ax_zoom.set_ylabel("Amplitud [int16]")
        ax_zoom.set_xlabel("Tiempo [s]")
        _mark_inset(
            ax,
            ax_zoom,
            loc1a=1,
            loc1b=4,
            loc2a=2,
            loc2b=3,
            fill=True,
            fc=("#dc143c", 0.68),
            ec=("#dc143c", 0.78),
            zorder=5,
            lw=0.8,
        )
        if add_peaks:
            # peaks, f0 = signal.peaks(t0, t1, zoom["peaks_threshold"])
            peaks, f0 = signal.peaks(t0, t1, zoom["peaks_distance"])
            ax_zoom.plot(
                *peaks,
                "v",
                color="#ff4500",
                label=f"$f_0$={f0:.2f} Hz",
            )
        ax_zoom.legend(loc="lower left", facecolor="white", framealpha=0.8, edgecolor="black", fontsize=14)


def plot_horizontal_stack(signals: list, freq: float):
    from math import pi

    fig = plt.figure(figsize=(6, 2))
    gs = GridSpec(1, len(signals),hspace=0.42, wspace=0.25)

    for i, s in enumerate(signals):
        ax_s = fig.add_subplot(gs[0,i])
        ax_s.plot(
            *s.raw_signal,
            c=colors[i % len(colors)],
            lw=0.65,
            label=s.label,
        )
        ax_s.xaxis.set_major_locator(ticker.MultipleLocator(1 / freq))
        ax_s.xaxis.set_minor_locator(ticker.MultipleLocator(1 / freq / 10))

        ax_s.grid(which="both", linestyle="--", lw=0.55)
        ax_s.grid(which="major", axis="x", lw=0.8, color=("gray", 0.8))

        ax_s.set_xlim(0, 4 / freq)
        ax_s.legend(loc="upper right", facecolor="white", framealpha=0.8, edgecolor="black")
        ax_s.set_ylabel("Amplitud")
        ax_s.set_xlabel("Tiempo [s]")

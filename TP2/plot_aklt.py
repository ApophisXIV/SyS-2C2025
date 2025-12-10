import numpy as np
import matplotlib.pyplot as plt
from matplotlib.gridspec import GridSpec
from matplotlib.widgets import Slider
from mpl_toolkits.axes_grid1.inset_locator import TransformedBbox, BboxPatch, BboxConnector

from signal import Signal  # tu clase Signal

labels_size = 12
marker_size = 1

lines_color = ("blue", 0.5)
marker_color = ("blue", 0.5)
axis_color = "#303841"
notes_color = "coral"

# Color inicial con opacidad fija
shadow_color = (0.0, 0.0, 0.0, 0.15)  # magenta con alpha 0.15


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


def plot_signal_fft_magnitude(
    ax, signal, ymax=None, ymin=0, xmin=0, xmax=None, marker_color=marker_color, lines_color=lines_color
):
    data = signal.fft_magnitude()
    markerline, stemlines, baseline = ax.stem(*data, markerfmt="^", label=f"{signal.label}")
    ax.set_ylim(ymin, ymax if ymax is not None else ax.get_ylim()[1])
    ax.set_xlim(xmin, xmax if xmax is not None else ax.get_xlim()[1])
    ax.set_xlabel("Frecuencia [Hz]")
    ax.set_ylabel("Magnitud")
    ax.grid(which="both", linestyle="--", lw=0.5)
    ax.tick_params(which="both", direction="in", top=True, right=True)
    markerline.set_markersize(marker_size)
    stemlines.set_linewidth(0.53)
    baseline.set_linewidth(0.5)
    markerline.set_color(marker_color)
    stemlines.set_color(lines_color)
    ax.legend(loc="upper right", facecolor="white", framealpha=0.8, edgecolor="black", fontsize=labels_size)


def plot_filtered_signal(original: Signal, filter: Signal, cutoff=None):
    filtered = original.convolve(filter)

    canva = plt.figure(figsize=(10, 7))
    gs = GridSpec(3, 4, figure=canva)

    ax_diff = canva.add_subplot(gs[0, 0:2])
    ax_filter = canva.add_subplot(gs[0, 2:])
    ax_zoom = canva.add_subplot(gs[1, :])

    plot_signal_fft_magnitude(ax_filter, filter)

    # Función interna que dibuja el gráfico según el color actual
    def update_plot(shadow_rgb):
        ax_diff.cla()
        ax_zoom.cla()
        plot_signal_fft_magnitude(ax_diff, original, marker_color=shadow_rgb, lines_color=shadow_rgb)
        plot_signal_fft_magnitude(ax_diff, filtered)
        plot_signal_fft_magnitude(ax_zoom, original, marker_color=shadow_rgb, lines_color=shadow_rgb)
        plot_signal_fft_magnitude(ax_zoom, filtered)

        _mark_inset(
            ax_diff,
            ax_zoom,
            loc1a=1,
            loc1b=4,
            loc2a=2,
            loc2b=3,
            fill=True,
            zorder=5,
            fc=(shadow_rgb[0], shadow_rgb[1], shadow_rgb[2], 0.38),
            ec=(shadow_rgb[0], shadow_rgb[1], shadow_rgb[2], 0.48),
            lw=0.8,
        )
        ax_zoom.set_xlim(0, cutoff if cutoff is not None else ax_zoom.get_xlim()[1])
        canva.canvas.draw_idle()

    # Dibujo inicial
    update_plot(shadow_color)

    # --- Sliders ---
    axcolor = "lightgoldenrodyellow"
    ax_r = canva.add_axes([0.15, 0.05, 0.65, 0.02], facecolor=axcolor)
    ax_g = canva.add_axes([0.15, 0.02, 0.65, 0.02], facecolor=axcolor)
    ax_b = canva.add_axes([0.15, -0.01, 0.65, 0.02], facecolor=axcolor)

    slider_r = Slider(ax_r, "R", 0, 1, valinit=shadow_color[0])
    slider_g = Slider(ax_g, "G", 0, 1, valinit=shadow_color[1])
    slider_b = Slider(ax_b, "B", 0, 1, valinit=shadow_color[2])

    def on_change(val):
        r, g, b = slider_r.val, slider_g.val, slider_b.val
        update_plot((r, g, b, shadow_color[3]))

    slider_r.on_changed(on_change)
    slider_g.on_changed(on_change)
    slider_b.on_changed(on_change)

    plt.tight_layout(rect=[0, 0.08, 1, 1])
    plt.show()

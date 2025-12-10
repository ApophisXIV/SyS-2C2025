from multiprocessing import Pool
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker
from matplotlib.ticker import LinearLocator
from matplotlib.gridspec import GridSpec
from mpl_toolkits.axes_grid1.inset_locator import (
    TransformedBbox,
    BboxPatch,
    BboxConnector,
)
from mpl_toolkits.axes_grid1.inset_locator import inset_axes

from signal import Signal

labels_size = 12
marker_size = 1

# lines_color  = ("royalblue", 0.95)
# marker_color = ("royalblue", 0.5)
# lines_color  = ("#ff7f0e", 1)
lines_color  = ("indigo", 0.86)
lines_color  = ("#009500", 0.86)
lines_color  = ("#f94ef9", 0.86)
marker_color = lines_color
# lines_color  = "mediumseagreen"
# marker_color = "#9467bd"
axis_color   = "#303841"
notes_color  = "coral"
# shadow_color = ("#1f77b4", 1)
shadow_color = ("#009500", 0.5)
shadow_color = ("blue", 0.5)
# shadow_color = ("fuchsia", 0.31)


def plot_signal_fft_magnitude(
    ax,
    signal,
    ymax=None,
    ymin=0,
    xmin=0,
    xmax=None,
    marker_color=marker_color,
    lines_color=lines_color,
    lines_width=0.53,
    marker_size=marker_size,
):
    data = signal.fft_magnitude()
    # Logarithmic scale
    # data = (data[0], 20 * np.log10(data[1]))

    markerline, stemlines, baseline = ax.stem(*data, markerfmt="^", label=f"{signal.label}")
    ax.set_ylim(ymin, ymax if ymax is not None else ax.get_ylim()[1])
    ax.set_xlim(xmin, xmax if xmax is not None else ax.get_xlim()[1])
    ax.set_xlabel("Frecuencia [Hz]")
    ax.set_ylabel("Magnitud")
    ax.grid(which="both", linestyle="--", lw=0.5)
    ax.tick_params(which="both", direction="in", top=True, right=True)
    markerline.set_markersize(marker_size)
    stemlines.set_linewidth(lines_width)
    baseline.set_linewidth(0.5)
    markerline.set_color(marker_color)
    stemlines.set_color(lines_color)
    ax.legend(loc="upper right", facecolor="white", framealpha=0.8, edgecolor="black", fontsize=labels_size)


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


# shadow_color = ("teal", 0.15)
# shadow_color = ("dimgray", 0.1)
# shadow_color = ("dodgerblue", 0.1)
# shadow_color = ("magenta", 0.1)
# shadow_color = ("orange", 0.1)
# shadow_color = ("darkorange", 0.15)
# shadow_color = [("black", 0.1),("darkgray",0.3),("darkgray",0.35),("gray",0.2),("gray",0.25),("lightseagreen",0.2)]


def plot_filtered_signal(original: Signal, filter: Signal, cutoff=None):
    filtered = original.convolve(filter)

    canva = plt.figure(figsize=(10, 6))
    canva.subplots_adjust(left=0.05, right=0.95, top=0.965, bottom=0.06, wspace=0.25, hspace=0.18)

    gs = GridSpec(2, 4, figure=canva)

    ax_diff = canva.add_subplot(gs[0, 0:2])
    ax_filter = canva.add_subplot(gs[0, 2:])
    ax_zoom = canva.add_subplot(gs[1, :])

    plot_signal_fft_magnitude(
        ax_filter, filter, lines_width=1.2, marker_size=1.2, lines_color=("#009500", 0.86), marker_color=("#009500", 0.86)
    )

    for ax in [ax_diff, ax_zoom]:
        plot_signal_fft_magnitude(ax, original, marker_color=shadow_color, lines_color=shadow_color)
        plot_signal_fft_magnitude(ax, filtered)

    _mark_inset(
        ax_diff,
        ax_zoom,
        loc1a=1,
        loc1b=4,
        loc2a=2,
        loc2b=3,
        fill=True,
        zorder=5,
        fc=("#dc143c", 0.38),
        ec=("#dc143c", 0.48),
        lw=0.8,
    )
    # ax_diff.set_xlim(0, 100)
    # ax_zoom.set_xlim(0, 100)
    ax_zoom.set_xlim(0, cutoff if cutoff is not None else ax_zoom.get_xlim()[1])

    plt.ioff()
    # plt.tight_layout()
    # plt.savefig(f"filtered_signal_{original.label}_with_{filter.label}.png", dpi=300)
    plt.show()


# from matplotlib import colors as mcolors
import os

if not os.path.exists("output"):
    os.makedirs("output")

# colors = list(mcolors.CSS4_COLORS.keys())


# # Función modificada para guardar la figura con diferentes colores y opacidades
# def plot_filtered_signal(original: Signal, filter: Signal, cutoff=None):
#     filtered = original.convolve(filter)

#     for i, color in enumerate(colors):
#         for opacity in [0.15, 0.5]:

#             print(
#                 f"Generando figura con color {color} y opacidad {opacity}... ({i * 2 + (1 if opacity == 0.5 else 0) + 1}/{len(colors) * 2})"
#             )

#             shadow_color = (color, opacity)

#             canva = plt.figure(figsize=(10, 6))
#             gs = GridSpec(2, 4, figure=canva)

#             ax_diff = canva.add_subplot(gs[0, 0:3])
#             ax_filter = canva.add_subplot(gs[0, 3])
#             ax_zoom = canva.add_subplot(gs[1, :])

#             plot_signal_fft_magnitude(ax_filter, filter)

#             for ax in [ax_diff, ax_zoom]:
#                 plot_signal_fft_magnitude(ax, original, marker_color=shadow_color, lines_color=shadow_color)
#                 plot_signal_fft_magnitude(ax, filtered)

#             _mark_inset(
#                 ax_diff,
#                 ax_zoom,
#                 loc1a=1,
#                 loc1b=4,
#                 loc2a=2,
#                 loc2b=3,
#                 fill=True,
#                 zorder=5,
#                 fc=("#dc143c", 0.38),
#                 ec=("#dc143c", 0.48),
#                 lw=0.8,
#             )
#             ax_diff.set_xlim(0, 100)
#             ax_zoom.set_xlim(0, 100)

#             # Guardar la figura con un nombre único
#             plt.ioff()
#             plt.tight_layout()

#             # Guardar en la carpeta output
#             canva.savefig(
#                 f"output/filtered_signal_{original.label}_with_{filter.label}_{color}_opacity_{int(opacity*100)}.png",
#                 dpi=300,
#             )
#             plt.close()

import tkinter as tk  # Para obtener tamaño de pantalla (funciona en Windows/Linux/macOS)


def get_screen_size_inches():
    root = tk.Tk()
    root.withdraw()
    width_px = root.winfo_screenwidth()
    height_px = root.winfo_screenheight()
    root.destroy()
    dpi = plt.rcParams["figure.dpi"]  # Valor DPI actual de Matplotlib
    return width_px / dpi, height_px / dpi


def generate_figure(i, color, original, filter, filtered, cutoff, task_len):

    count = task_len - i - 1  # Ahora 'count' es calculado a partir del índice 'i'

    print(f"Generando figura con color {color} ({count}/{task_len})")

    color_original = color[0]
    color_filtrada = color[1]

    # figsize_width = 1920 / 96  # 20 pulgadas
    # figsize_height = 1080 / 96  # 11.25 pulgadas

    # canva = plt.figure(figsize=(figsize_width, figsize_height))  # Ajustamos el tamaño de la figura
    figsize = get_screen_size_inches()
    canva = plt.figure(figsize=figsize)

    gs = GridSpec(2, 4, figure=canva)

    ax_diff = canva.add_subplot(gs[0, 0:3])
    ax_filter = canva.add_subplot(gs[0, 3])
    ax_zoom = canva.add_subplot(gs[1, :])

    plot_signal_fft_magnitude(ax_filter, filter)

    for ax in [ax_diff, ax_zoom]:
        plot_signal_fft_magnitude(ax, original, marker_color=color_original, lines_color=color_original)
        plot_signal_fft_magnitude(ax, filtered, marker_color=color_filtrada, lines_color=color_filtrada)

    _mark_inset(
        ax_diff,
        ax_zoom,
        loc1a=1,
        loc1b=4,
        loc2a=2,
        loc2b=3,
        fill=True,
        zorder=5,
        fc=("#dc143c", 0.38),
        ec=("#dc143c", 0.48),
        lw=0.8,
    )
    ax_zoom.set_xlim(0, cutoff)

    plt.ioff()
    plt.tight_layout()

    # figure = plt.gcf()  # get current figure
    # figure.set_size_inches(20, 10)  # set figure's size manually to your full screen (32x18)
    # # plt.savefig("filename.png", bbox_inches="tight")  # bbox_inches removes extra white spaces

    canva.savefig(
        f"output/{color}.png",
        dpi=plt.rcParams["figure.dpi"],  # usa el DPI actual
        bbox_inches="tight",
        pad_inches=0,
        facecolor=canva.get_facecolor(),
        edgecolor="none",
    )
    plt.close()


colors = [
    # --- Paletas profesionales (Nature, IEEE, etc.) ---
    ["#0072B2", "#D55E00"],  # Azul profesional y naranja cálido
    ["#009E73", "#CC79A7"],  # Verde esmeralda y magenta suave (Nature)
    ["#1f77b4", "#ff7f0e"],  # Azul y naranja clásico (Matplotlib default)
    ["#4C72B0", "#C44E52"],  # Azul grisáceo y rojo ladrillo
    ["#56B4E9", "#E69F00"],  # Celeste y naranja mostaza
    # --- Paletas con verde ---
    ["#2CA02C", "#E15759"],  # Verde brillante y rojo coral
    ["#55A868", "#E17C05"],  # Verde lima apagado y naranja oscuro
    ["#1ABC9C", "#8E44AD"],  # Verde agua y morado intenso
    ["#009E73", "#E69F00"],  # Verde esmeralda y mostaza
    ["#4DAF4A", "#984EA3"],  # Verde medio y violeta (paleta Set1 de ColorBrewer)
    ["#66C2A5", "#FC8D62"],  # Verde agua y naranja pastel (Set2)
    ["#8DD3C7", "#FB8072"],  # Verde menta y rojo coral (ColorBrewer pastel)
    ["#5CB85C", "#D9534F"],  # Verde institucional y rojo oscuro (estilo académico)
    ["#00BFA0", "#F45B69"],  # Verde azulado y rosa rojizo
    # --- Paletas más vivas / modernas ---
    ["#00AFBB", "#E7B800"],  # Azul turquesa y amarillo dorado
    ["#009E73", "#F0E442"],  # Verde y amarillo brillante
    ["#17BECF", "#BCBD22"],  # Cian brillante y oliva (Plotly classic)
    ["#1F9A8A", "#E66100"],  # Verde marino y naranja intenso
    ["#00BFC4", "#F8766D"],  # Verde-azul y rosa coral (ggplot2)
    ["#00A087", "#E64B35"],  # Verde jade y rojo ladrillo (SciColor)
    ["#3CB371", "#FF6347"],  # Verde medio y rojo tomate
    ["#20B2AA", "#FF4500"],  # Verde marino claro y naranja rojizo
    # --- Combinaciones suaves pero contrastantes ---
    ["#4C72B0", "#55A868"],  # Azul grisáceo y verde oliva suave
    ["#76B7B2", "#E15759"],  # Verde agua y rojo coral
    ["#8DA0CB", "#FC8D62"],  # Azul lavanda y naranja pastel
    ["#B3DE69", "#FB8072"],  # Verde lima pastel y coral
    ["#80B1D3", "#B3DE69"],  # Azul pastel y verde lima
    ["#A6CEE3", "#33A02C"],  # Celeste y verde bosque
    ["#B2DF8A", "#1F78B4"],  # Verde claro y azul fuerte
    # --- Paletas oscuras / elegantes ---
    ["#2C3E50", "#E74C3C"],  # Azul acero y rojo fuerte
    ["#34495E", "#1ABC9C"],  # Azul oscuro y verde brillante
    ["#264653", "#E76F51"],  # Azul petróleo y salmón
    ["#006D77", "#E29578"],  # Verde océano y coral suave
    ["#1B4332", "#B5838D"],  # Verde bosque y rosado tenue
    ["#0B3954", "#BFD7EA"],  # Azul profundo y celeste pastel
    # --- Paletas complementarias artísticas ---
    ["#228B22", "#8B0000"],  # Verde bosque y rojo oscuro
    ["#008080", "#FF7F50"],  # Verde azulado y coral
    ["#006400", "#FFD700"],  # Verde oscuro y dorado
    ["#2E8B57", "#DA70D6"],  # Verde marino y orquídea
    ["#3CB371", "#FF8C00"],  # Verde medio y naranja vivo
    ["#32CD32", "#BA55D3"],  # Verde lima y púrpura medio
]


def _plot_filtered_signal(original: Signal, filter: Signal, cutoff=None):
    filtered = original.convolve(filter)

    # Inicializamos tasks antes de calcular task_len
    tasks = []

    # Primero agregamos todas las tareas
    for i, color in enumerate(colors):
        # for opacity in [0.1, 0.2, 0.3]:
        tasks.append((i, color, original, filter, filtered, cutoff))

    # Ahora calculamos task_len después de que la lista 'tasks' esté llena
    task_len = len(tasks)

    # Ahora usamos task_len para pasarla a los procesos
    with Pool(processes=6) as pool:
        pool.starmap(
            generate_figure,
            [
                (i, color, original, filter, filtered, cutoff, task_len)
                for i, color, original, filter, filtered, cutoff in tasks
            ],
        )

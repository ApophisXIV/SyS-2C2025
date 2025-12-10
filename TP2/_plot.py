import matplotlib.pyplot as plt
from matplotlib.widgets import Button
from matplotlib.gridspec import GridSpec
from mpl_toolkits.axes_grid1.inset_locator import TransformedBbox, BboxPatch, BboxConnector

# Colores y opacidades para el botón
colors = ["red", "green", "blue", "yellow"]  # Colores cíclicos
opacities = [0.1, 0.2, 0.3]  # Opacidades cíclicas

# Diccionario para almacenar el estado de color y opacidad
state = {"color_index": 0, "opacity_index": 0}


# Función para plotear la magnitud FFT de una señal
def plot_signal_fft_magnitude(
    ax, signal, ymax=None, ymin=0, xmin=0, xmax=None, marker_color="tomato", lines_color="tomato"
):
    data = signal.fft_magnitude()
    markerline, stemlines, baseline = ax.stem(*data, markerfmt="^", label=f"{signal.label}")
    ax.set_ylim(ymin, ymax if ymax is not None else ax.get_ylim()[1])
    ax.set_xlim(xmin, xmax if xmax is not None else ax.get_xlim()[1])
    ax.set_xlabel("Frecuencia [Hz]")
    ax.set_ylabel("Magnitud")
    ax.grid(which="both", linestyle="--", lw=0.5)
    ax.tick_params(which="both", direction="in", top=True, right=True)
    markerline.set_markersize(1)
    stemlines.set_linewidth(0.53)
    baseline.set_linewidth(0.5)
    markerline.set_color(marker_color)
    stemlines.set_color(lines_color)
    ax.legend(loc="upper right", facecolor="white", framealpha=0.8, edgecolor="black", fontsize=12)


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


# Función para el gráfico con el filtro aplicado
def plot_filtered_signal(original, filter, cutoff=None):
    filtered = original.convolve(filter)

    # Crear la figura y los subgráficos
    canva = plt.figure(figsize=(10, 6))
    gs = GridSpec(2, 4, figure=canva)

    ax_diff = canva.add_subplot(gs[0, 0:2])
    ax_filter = canva.add_subplot(gs[0, 2:])
    ax_zoom = canva.add_subplot(gs[1, :])

    # Inicializar el gráfico con el filtro
    plot_signal_fft_magnitude(ax_filter, filter)

    # Usar el estado actual de color y opacidad desde el diccionario
    shadow_color = (colors[state["color_index"]], opacities[state["opacity_index"]])

    # Dibujar las señales original y filtrada con el color y opacidad actuales
    for ax in [ax_diff, ax_zoom]:
        plot_signal_fft_magnitude(ax, original, marker_color=shadow_color[0], lines_color=shadow_color[0])
        plot_signal_fft_magnitude(ax, filtered)

    # Conexión de la caja de zoom
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

    # Establecer el límite del zoom
    ax_zoom.set_xlim(0, cutoff if cutoff is not None else ax_zoom.get_xlim()[1])

    # plt.ioff()
    # plt.tight_layout()

    # # Mostrar la gráfica
    # plt.show()

    # Función para actualizar el color y opacidad
    def update_plot(event):
        # Actualizar el color y la opacidad cíclicamente usando el diccionario
        state["opacity_index"] += 1
        if state["opacity_index"] >= len(opacities):
            state["opacity_index"] = 0
            state["color_index"] += 1
            if state["color_index"] >= len(colors):
                state["color_index"] = 0  # Volver al primer color

        # Volver a graficar con los nuevos parámetros
        plot_filtered_signal(original, filter, cutoff)

    # Crear el botón
    ax_button = plt.axes([0.4, 0.01, 0.2, 0.075])  # Posición del botón
    button = Button(ax_button, "Siguiente", color="lightgoldenrodyellow", hovercolor="gold")

    # Asignar la función al botón
    button.on_clicked(update_plot)

    # Mostrar la interfaz interactiva
    plt.show()

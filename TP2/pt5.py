import numpy as np
import matplotlib.pyplot as plt
from scipy.io import wavfile
import wave
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
# plt.style.use("https://github.com/dhaitz/matplotlib-stylesheets/raw/master/pitayasmoothie-light.mplstyle")
matplotlib.use("TkAgg")


# === FUNCIÓN PARA GUARDAR ARCHIVOS ===
def write_wav(path, data, sample_rate, num_channels=1, bits_per_sample=16):
    with wave.open(path, "wb") as wav_file:
        wav_file.setnchannels(num_channels)
        wav_file.setsampwidth(bits_per_sample // 8)
        wav_file.setframerate(sample_rate)
        data = [max(-32768, min(32767, int(sample))) for sample in data]
        byte_data = bytearray()
        for sample in data:
            byte_data.extend(sample.to_bytes(bits_per_sample // 8, byteorder="little", signed=True))
        wav_file.writeframes(byte_data)


# === CONFIGURACIÓN INICIAL ===
filename = "Assets/saxo_a4.wav"

t_cuasi_ini = 0.800
t_cuasi_fin = 0.830

t_per1_ini = 0.800
t_per1_fin = 0.805

t_perN_ini = 0.800
t_perN_fin = 0.823

N_armonicos = 20

filename    = "Assets/piano_a4.wav"
t_cuasi_ini = 0.399
t_cuasi_fin = 0.415

t_per1_ini = 0.399
t_per1_fin = 0.401

t_perN_ini = 0.399
t_perN_fin = 0.413

N_armonicos = 10

# === LECTURA DEL AUDIO ===
fs, x = wavfile.read(filename)
x = x.astype(float)
x = x / np.max(np.abs(x))  # normalización


# === FUNCIONES AUXILIARES ===
def seg_audio(x, fs, t_ini, t_fin):
    n_ini = int(t_ini * fs)
    n_fin = int(t_fin * fs)
    return x[n_ini:n_fin]


def reconstruct_by_ifft(x_segment, K):
    N = len(x_segment)
    X = np.fft.fft(x_segment)
    Xf = np.zeros_like(X, dtype=complex)
    Xf[0] = X[0]
    Xf[1 : K + 1] = X[1 : K + 1]
    Xf[-K:] = X[-K:]
    x_rec = np.fft.ifft(Xf).real
    return x_rec


def ajustar_longitud(x_rec, len_objetivo):
    if len(x_rec) < len_objetivo:
        reps = int(np.ceil(len_objetivo / len(x_rec)))
        x_rec = np.tile(x_rec, reps)
    return x_rec[:len_objetivo]


def calcular_fft_magnitude(signal, fs):
    N = len(signal)
    window = np.hanning(N)
    X = np.fft.fft(signal * window)
    freqs = np.fft.fftfreq(N, 1 / fs)
    mag = np.abs(X[: N // 2]) / np.max(np.abs(X))
    return freqs[: N // 2], mag


labels_size = 15
marker_size = 1


# === FUNCIÓN DE GRAFICADO (tu estilo adaptado) ===
def plot_signal_fft_magnitude(
    ax,
    signal,
    fs,
    label=None,
    color="k",
    xmin=0,
    xmax=None,
    use_ymax=False,
    lines_width=0.8,
    marker_size=4,
    fontsize=14,
    ymargin=0.1,
):
    freqs, data = calcular_fft_magnitude(signal, fs)
    if xmin is not None or xmax is not None:
        indices = np.where((freqs >= xmin if xmin is not None else True) & (freqs <= xmax if xmax is not None else True))
        freqs = freqs[indices]
        data = data[indices]
    ymax = max(data) if use_ymax or max(data) > ax.get_ylim()[1] else ax.get_ylim()[1]

    markerline, stemlines, baseline = ax.stem(freqs, data, markerfmt="^", label=label)
    ax.grid(which="both", linestyle="--", lw=0.5)
    ax.tick_params(which="both", direction="in", top=True, right=True, labelsize=fontsize)
    ax.minorticks_on()
    markerline.set_markersize(marker_size)
    stemlines.set_linewidth(lines_width)
    baseline.set_linewidth(0.5)
    markerline.set_color(color)
    stemlines.set_color(color)

    ax.set_xlabel("Frecuencia [Hz]", fontsize=fontsize + 2)
    ax.set_ylabel("Magnitud normalizada", fontsize=fontsize + 2)
    ax.legend(loc="upper right", facecolor="white", framealpha=0.95, edgecolor="black", fontsize=fontsize)
    ax.margins(x=0.01)
    ax.set_ylim(-ymax * ymargin, ymax * (1 + ymargin))


# === SELECCIÓN DE SEGMENTOS ===
x_cuasi = seg_audio(x, fs, t_cuasi_ini, t_cuasi_fin)
x_per1 = seg_audio(x, fs, t_per1_ini, t_per1_fin)
x_perN = seg_audio(x, fs, t_perN_ini, t_perN_fin)

t_cuasi = np.linspace(t_cuasi_ini, t_cuasi_fin, len(x_cuasi))

# === RECONSTRUCCIONES ===
rec1 = reconstruct_by_ifft(x_per1, N_armonicos)
recN = reconstruct_by_ifft(x_perN, N_armonicos)
rec1_adj = ajustar_longitud(rec1, len(x_cuasi))
recN_adj = ajustar_longitud(recN, len(x_cuasi))

write_wav("periodo.wav", rec1_adj, fs)
write_wav("periodos.wav", recN_adj, fs)


c_1_periodo = ("#0EB131",1)
c_N_periodo = "red"
c_original = "blue"

# === GRAFICAR EN EL TIEMPO ===

plt.figure(figsize=(10, 5))
plt.plot(t_cuasi, x_cuasi, color=c_original, linewidth=1.2, label="Original (cuasiperiódica)")
plt.plot(t_cuasi, rec1_adj,color= c_1_periodo, linewidth=1.0, label=f"Reconstrucción (1 período, {N_armonicos} armónicos)")
plt.plot(t_cuasi, recN_adj,color= c_N_periodo, linewidth=1.0, label=f"Reconstrucción (varios períodos, {N_armonicos} armónicos)")

# plt.title("Comparación temporal: señal original vs reconstrucciones")
plt.xlabel("Tiempo [s]", fontsize=15)
plt.ylabel("Amplitud normalizada", fontsize=15)
plt.legend(loc="upper right", facecolor="white", framealpha=0.8, edgecolor="black", fontsize=15)
plt.grid(True)
plt.tight_layout()
plt.show()

# === GRAFICAR ESPECTROS (usando tu función adaptada) ===
fig, ax = plt.subplots(figsize=(10, 5))
plot_signal_fft_magnitude(ax, x_cuasi, fs, label="Original (cuasiperiódica)", color=c_original, xmax=5000)
plot_signal_fft_magnitude(ax, rec1_adj, fs, label=f"Reconstrucción (1 período, {N_armonicos} armónicos)", color=c_1_periodo, xmax=5000)
plot_signal_fft_magnitude(ax, recN_adj, fs, label=f"Reconstrucción (varios períodos, {N_armonicos} armónicos)", color=c_N_periodo, xmax=5000)
# ax.set_title("Espectros de magnitud (comparación)")
plt.tight_layout()
plt.show()

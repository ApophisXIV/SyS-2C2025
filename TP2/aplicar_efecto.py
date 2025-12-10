import numpy as np
import soundfile as sf
from scipy.interpolate import interp1d
import sys
import os

# ===============================
# 🎧 APLICAR EFECTOS DE AUDIO
# ===============================


def apply_tremolo(signal, rate_hz=5, depth=0.6, sr=44100):
    """
    Aplica trémolo (modulación de amplitud).
    rate_hz: frecuencia de modulación
    depth  : intensidad del efecto (0–1)
    """
    t = np.arange(len(signal)) / sr
    lfo = 1 - depth + depth * np.sin(2 * np.pi * rate_hz * t)
    return signal * lfo


def apply_vibrato(signal, rate_hz=5, depth_ms=6, sr=44100):
    """
    Aplica vibrato (modulación de frecuencia por retardo variable).
    rate_hz : frecuencia del LFO
    depth_ms: profundidad del vibrato en milisegundos
    """
    t = np.arange(len(signal))
    depth_samples = int((depth_ms / 1000) * sr)
    delay = depth_samples * np.sin(2 * np.pi * rate_hz * t / sr)
    new_t = t + delay
    new_t = np.clip(new_t, 0, len(signal) - 1)
    interpolator = interp1d(t, signal, kind="linear")
    return interpolator(new_t)


from pedalboard import Chorus


def apply_chorus(signal, rate_hz=1.0, depth_ms=15, sr=44100):
    """
    Aplica efecto chorus usando la librería Pedalboard.
    rate_hz : frecuencia de modulación (frecuencia de las ondas de modulación)
    depth_ms: profundidad del chorus en milisegundos (el retardo máximo de las copias)
    sr      : frecuencia de muestreo (sampling rate)
    """
    # Convertir profundidad de milisegundos a muestras
    depth_samples = int((depth_ms / 1000) * sr)

    # Crear un objeto Chorus de Pedalboard
    chorus = Chorus(rate_hz=rate_hz, depth=depth_samples / sr, mix=0.5)

    # Aplicar el efecto chorus al audio
    chorus_signal = chorus(signal, sample_rate=sr)

    return chorus_signal


def procesar_audio(input_path):
    # === Leer audio ===
    audio, sr = sf.read(input_path)
    if audio.ndim > 1:
        audio = audio.mean(axis=1)  # convertir a mono si es estéreo

    nombre_base = os.path.splitext(os.path.basename(input_path))[0]

    # === Aplicar efectos ===
    tremolo_audio = apply_tremolo(audio, rate_hz=6, depth=0.7, sr=sr)
    vibrato_audio = apply_vibrato(audio, rate_hz=5, depth_ms=7, sr=sr)
    chorus_audio = apply_chorus(audio, rate_hz=15, depth_ms=100, sr=sr)

    # === Guardar resultados ===
    tremolo_out = f"{nombre_base}_tremolo.wav"
    vibrato_out = f"{nombre_base}_vibrato.wav"
    chorus_out = f"{nombre_base}_chorus.wav"

    sf.write(tremolo_out, tremolo_audio, sr)
    sf.write(vibrato_out, vibrato_audio, sr)
    sf.write(chorus_out, chorus_audio, sr)

    print("✅ Procesamiento completado.")
    print(f"Archivos generados:\n - {tremolo_out}\n - {vibrato_out}\n - {chorus_out}")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Uso: python aplicar_efectos.py <ruta_del_archivo.wav>")
        sys.exit(1)

    input_path = sys.argv[1]

    if not os.path.exists(input_path):
        print(f"❌ No se encontró el archivo: {input_path}")
        sys.exit(1)

    procesar_audio(input_path)

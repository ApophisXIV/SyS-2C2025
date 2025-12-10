"""
  @file efectos.py
  @author Guido Rodriguez (guerodriguez@fi.uba.ar)
  @version 1.0
  @date 2025-11-04
  @copyright Copyright (c) 2025
"""

import os
import soundfile as sf
from pedalboard import Pedalboard, Tremolo, Chorus, Vibrato


def aplicar_efectos(input_path):
    audio, sr = sf.read(input_path)
    
    if audio.ndim > 1:
        audio = audio.mean(axis=1)  

    nombre_base = os.path.splitext(os.path.basename(input_path))[0]
    board = Pedalboard()

    tremolo = Tremolo(rate_hz=5, depth=0.7)
    chorus = Chorus(rate_hz=1.5, depth=0.5, mix=0.5)
    vibrato = Vibrato(rate_hz=5, depth=0.7)
    
    board.append(tremolo)
    board.append(chorus)
    board.append(vibrato)
    audio_with_effects = board(audio, sample_rate=sr)

    output_path = f"{nombre_base}_efectos.wav"
    sf.write(output_path, audio_with_effects, sr)

    print(f"salid->{output_path}")


if __name__ == "__main__":
    input_path = "Assets/base.wav"  

    if not os.path.exists(input_path):
        print(f"ERR_NO_FILE -> {input_path}")
    else: 
        aplicar_efectos(input_path)

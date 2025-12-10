"""
  @file wav.py
  @author Guido Rodriguez (guerodriguez@fi.uba.ar)
  @version 1.0
  @date 2025-11-04
  @copyright Copyright (c) 2025
"""

class Wav:
    def __init__(self, path):
        self._path = path
        self._chunk_id = None
        self._chunk_size = None
        self._format = None
        self._subchunk1_id = None
        self._subchunk1_size = None
        self._audio_format = None
        self._num_channels = None
        self._sample_rate = None
        self._byte_rate = None
        self._block_align = None
        self._bits_per_sample = None
        self._subchunk2_id = None
        self._subchunk2_size = None
        self._data = []
        self._time = []
        self._sample = []
        self._read_wav()

    def _read_wav(self):
        with open(self._path, "rb") as f:
            self._chunk_id = f.read(4)
            self._chunk_size = int.from_bytes(f.read(4), "little")
            self._format = f.read(4)
            self._subchunk1_id = f.read(4)
            self._subchunk1_size = int.from_bytes(f.read(4), "little")
            self._audio_format = int.from_bytes(f.read(2), "little")
            self._num_channels = int.from_bytes(f.read(2), "little")
            self._sample_rate = int.from_bytes(f.read(4), "little")
            self._byte_rate = int.from_bytes(f.read(4), "little")
            self._block_align = int.from_bytes(f.read(2), "little")
            self._bits_per_sample = int.from_bytes(f.read(2), "little")
            self._subchunk2_id = f.read(4)
            self._subchunk2_size = int.from_bytes(f.read(4), "little")

            for i in range(self._subchunk2_size // self._block_align):
                self._data.append(int.from_bytes(f.read(self._block_align), "little", signed=True))
                self._sample.append(i)
                self._time.append(i / self._sample_rate)

    def metadata(self):
        print(f"======= Metadata de {self._path} =======")
        print(f"Chunk ID: {self._chunk_id}")
        print(f"Chunk Size: {self._chunk_size}")
        print(f"Format: {self._format}")
        print(f"Subchunk1 ID: {self._subchunk1_id}")
        print(f"Subchunk1 Size: {self._subchunk1_size}")
        print(f"Audio Format: {self._audio_format}")
        print(f"Number of Channels: {self._num_channels}")
        print(f"Sample Rate: {self._sample_rate}")
        print(f"Byte Rate: {self._byte_rate}")
        print(f"Block Align: {self._block_align}")
        print(f"Bits per Sample: {self._bits_per_sample}")
        print(f"Subchunk2 ID: {self._subchunk2_id}")
        print(f"Subchunk2 Size (data size): {self._subchunk2_size}")
        print("")

    @property
    def data(self):
        return self._data

    @property
    def time(self):
        return self._time

    @property
    def sample_rate(self):
        return self._sample_rate

    @property
    def num_channels(self):
        return self._num_channels

    @property
    def bits_per_sample(self):
        return self._bits_per_sample

    @property
    def byte_rate(self):
        return self._byte_rate

    @property
    def block_align(self):
        return self._block_align

    @property
    def audio_format(self):
        return self._audio_format

    @property
    def subchunk1_size(self):
        return self._subchunk1_size

    @property
    def subchunk2_size(self):
        return self._subchunk2_size

    @property
    def format(self):
        return self._format

    @property
    def chunk_size(self):
        return self._chunk_size

    @property
    def chunk_id(self):
        return self._chunk_id

    @property
    def subchunk1_id(self):
        return self._subchunk1_id

    @property
    def subchunk2_id(self):
        return self._subchunk2_id


import wave
def write_wav(path, data, sample_rate, num_channels=1, bits_per_sample=16): 
    with wave.open(path, 'wb') as wav_file:
        wav_file.setnchannels(num_channels)
        wav_file.setsampwidth(bits_per_sample // 8)
        wav_file.setframerate(sample_rate)
        
        data = [max(-32768, min(32767, int(sample))) for sample in data]
        byte_data = bytearray()
        for sample in data:
            byte_data.extend(sample.to_bytes(bits_per_sample // 8, byteorder='little', signed=True))
        wav_file.writeframes(byte_data)

def _write_wav(path, data, sample_rate, num_channels=1, bits_per_sample=16): 
    """
    Crea un archivo WAV con los datos proporcionados.
    
    : param path           : Ruta donde se guardará el archivo WAV.
    : param data           : Lista de muestras de audio.
    : param sample_rate    : Tasa de muestreo (ej. 44100).
    : param num_channels   : Número de canales (1 para mono, 2 para estéreo).
    : param bits_per_sample: Bits por muestra (usualmente 16).
    """
      # Asegurarse de que las muestras están dentro del rango adecuado para 16 bits
    data = [max(-32768, min(32767, int(sample))) for sample in data]

      # Calcular el byte_rate y block_align
    byte_rate   = sample_rate * num_channels * bits_per_sample // 8
    block_align = num_channels * bits_per_sample // 8

      # Calcular el tamaño de los datos (subchunk2_size)
    subchunk2_size = len(data) * num_channels * bits_per_sample // 8
      # Calcular el tamaño total del archivo (chunk_size)
    chunk_size = 36 + subchunk2_size

      # Escribir el archivo WAV
    with open(path, "wb") as f: 
          # Encabezado RIFF
        f.write(b"RIFF")
        f.write(chunk_size.to_bytes(4, "little"))
        f.write(b"WAVE")

        # Subchunk fmt
        f.write(b"fmt ")
        f.write((16).to_bytes(4, "little"))  # Tamaño del subchunk fmt
        f.write((1).to_bytes(2, "little"))   # Formato de audio (1 = PCM)
        f.write(num_channels.to_bytes(2, "little"))
        f.write(sample_rate.to_bytes(4, "little"))
        f.write(byte_rate.to_bytes(4, "little"))
        f.write(block_align.to_bytes(2, "little"))
        f.write(bits_per_sample.to_bytes(2, "little"))

        # Subchunk data
        f.write(b"data")
        f.write(subchunk2_size.to_bytes(4, "little"))

        # Escribir las muestras de audio
        for sample in data:
            f.write(int(sample).to_bytes(2, "little", signed=True))

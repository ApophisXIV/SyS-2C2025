import numpy as np

class Signal:
    def __init__(self, label, data, time, sample_rate):
        self._signal = {"value": data, "time": time}
        self._sample_rate = sample_rate
        self._label = label
        self._peaks = None

    def get_sample_at(self, time):
        return int(time * self._sample_rate)

    def get_time_at(self, sample):
        return sample / self._sample_rate

    def peaks(self, t0, t1, sample_distance):
        N0, N1 = self.get_sample_at(t0), self.get_sample_at(t1)
        data = self._signal["value"][N0:N1]
        peak_value, peak_sample = [], []

        for i in range(1, len(data) - 2):

            if data[i] > data[i - 1] and data[i] > data[i + 1]:

                if len(peak_sample) == 0 or (i - peak_sample[-1] > sample_distance):
                    peak_sample.append(i)
                    peak_value.append(data[i])

                elif peak_value[-1] < data[i]:
                    peak_value[-1] = data[i]
                    peak_sample[-1] = i

        peak_time = [self.get_time_at(N0 + n) for n in peak_sample]
        f0 = 1 / np.mean(np.diff(peak_time))

        return (peak_time, peak_value), f0

    def convolve(self, filter):
        convolved_signal = np.convolve(self._signal["value"], filter.raw_data, mode="full")
        return Signal(
            label=self._label + f" (convolucionada {filter.label})",
            data=convolved_signal,
            time=[i / self._sample_rate for i in range(len(convolved_signal))],
            sample_rate=self._sample_rate,
        )

    @property
    def raw_data(self):
        return self._signal["value"]

    @property
    def raw_signal(self):
        return self._signal["time"], self._signal["value"]

    @property
    def sample_rate(self):
        return self._sample_rate

    @property
    def label(self):
        return self._label


# NOTE: Despues de haber hecho "de forma artesanal" la funcion de deteccion de picos
# descubrimos que scypi provee una. De todos consideramos adecuado mostrar el desarrollo de la misma

# import numpy as np
# from scipy.signal import find_peaks

# def peaks_w_scipy(self, t0, t1, threshold):
#     data_window = self._signal["value"][int(t0 * self._sample_rate) : int(t1 * self._sample_rate)]
#     peaks, _ = find_peaks(data_window, height=threshold, distance=100)
#     peaks_time = peaks / self._sample_rate + t0

#     f0 = 1 / np.mean(np.diff(peaks_time)) if len(peaks_time) > 1 else 0
#     return (peaks_time, data_window[peaks]), f0

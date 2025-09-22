import numpy as np
import matplotlib.pyplot as plt
from scipy import signal

K = 10

k = np.arange(-K, K + 1)

u = k >= 0

h = u
x = (1 / 2) ** -k * (k <= -1)


def h_invert(k):
    k_aux = np.arange(-K + k, K + k + 1)
    return k_aux >= 0


conv = np.zeros_like(k, dtype=float)

conv_np = signal.convolve(h, x, mode="same", method="direct")

for n in range(-K, K + 1):

    # print(f"n={n} -> range({-K},{n})")

    for ki in range(-K, n + 1 if n <= -1 else -1 + 1):
        # print(f"{ki} -> {0.5**(-ki)}")
        conv[K + n] += 0.5 ** (-ki)

    print(conv)

    # plt.stem(k, h_invert(n)[::-1], "orange", label=f"h[{n}-k]")

    plt.stem(k, conv_np, "r", markerfmt="o", label="h[n] * x[n]")
    plt.stem(k, conv, "b", markerfmt="x", label="h[n] * x[n]")
    # plt.stem(k, x, "g", markerfmt="v", label="x[k]")
    plt.xticks(np.linspace(-K, K, 2 * K + 1))
    # plt.yticks(np.linspace(0, max(conv), 11))
    plt.grid()
plt.show()

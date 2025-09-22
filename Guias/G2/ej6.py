# import numpy as np
# import matplotlib.pyplot as plt

# t = np.linspace(0, 5, 2000)       # tiempo
# omega = np.pi/2
# y = (np.exp(2*t) - np.exp(1j*omega*t)) / (2 - 1j*omega)  # convolución

# plt.figure(figsize=(12,5))

# # Plano complejo (trayectoria)
# plt.subplot(1,2,1)
# plt.plot(np.real(y), np.imag(y), lw=1.2)
# plt.scatter(np.real(y[0]), np.imag(y[0]), c='g', label='t=0')
# plt.scatter(np.real(y[-1]), np.imag(y[-1]), c='r', label=f't={t[-1]:.1f}s')
# plt.xlabel('Re{y(t)}')
# plt.ylabel('Im{y(t)}')
# plt.title('Trayectoria en el plano complejo')
# plt.gca().set_aspect('equal', 'box')
# plt.grid(True)
# plt.legend()

# # Partes real e imaginaria vs t
# plt.subplot(1,2,2)
# plt.plot(t, np.real(y), label='Re{y(t)}')
# plt.plot(t, np.imag(y), label='Im{y(t)}')
# plt.xlabel('t [s]')
# plt.ylabel('Amplitud')
# plt.title('Partes real e imaginaria')
# plt.grid(True)
# plt.legend()

# plt.tight_layout()
# plt.show()


import numpy as np
import matplotlib.pyplot as plt

# ------------------------------------------------
# Parámetros: rango de n para visualizar
n_min, n_max = -10, 10
n = np.arange(n_min, n_max+1)

# Señal h[n] = u[n]
h = (n >= 0).astype(float)

# Señal x[n] = (0.5)^{-n} * u(-n-1)  ->  x[n] = 2^n para n <= -1, 0 para n >= 0
x = np.zeros_like(n, dtype=float)
x[n <= -1] = 2.0**(n[n <= -1])

# Convolución discreta (uso de np.convolve)
y_conv = np.convolve(x, h,mode='full')                # vector de salida
n_y = np.arange(n_min + n_min, n_max + n_max + 1)  # índices de la salida

# Cortamos para el mismo rango visual (opcional)
# elegimos mostrar n desde n_min hasta n_max
idx_show = (n_y >= n_min) & (n_y <= n_max)
y_show = y_conv[idx_show]
n_show = n_y[idx_show]

# Solución analítica
y_analytic = np.zeros_like(n_show, dtype=float)
y_analytic[n_show <= -1] = 2.0**(n_show[n_show <= -1] + 1)
y_analytic[n_show >= 0]  = 1.0
# (nota: en -1 ambas asignaciones dan 1, así que está bien)

# Imprimir / comparar algunos valores
print("n_show:", n_show)
print("y (numérica):", np.round(y_show,6))
print("y (analítica):", np.round(y_analytic,6))

# Graficar
plt.stem(n, x[::-1], linefmt='C0-', markerfmt='C0o', basefmt=" ", label='x[n]')
plt.stem(n, h, linefmt='C1-', markerfmt='C1s', basefmt=" ", label='h[n]')
plt.figure()
plt.stem(n_show, y_show, linefmt='C2-', markerfmt='C2o', basefmt=" ", label='y numérica')
plt.stem(n_show, y_analytic, linefmt='r--', markerfmt='rx', basefmt=" ", label='y analítica')
plt.legend()
plt.xlabel('n')
plt.grid(True)
plt.title('Convolución x[n] * h[n]')
plt.show()

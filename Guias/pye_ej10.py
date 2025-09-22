

# Obtener una muestra aleatoria entre 0 y 1 y calcular la 
# probabilidad de que sea menor que el 0 no sea uno de los decimales


import numpy as np
import matplotlib.pyplot as plt

# Generar una muestra aleatoria
np.random.seed(0)
sample_size = 10000
samples = np.random.uniform(0, 1, sample_size)

# Calcualar la probabilidad de que uno de sus decimales sea 0
count_event = sum(1 for sample in samples if '0' in str(sample)[2:])
probability_event = count_event / sample_size

print(f"Ocurrencias: {count_event} ; Prob(al menos un 0) = {probability_event} , Prob(ningun 0) = {1 - probability_event}")
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.ticker import MultipleLocator, FixedLocator

n = np.arange(-5,5+1)

u = (n>=0)

h = (1/2)**n * u
x = (1/3)**n * u

def h_invert(k):
  n_aux = np.arange(-5+k,5+k+1)
  return (1/2) ** (n_aux) * (n_aux>=0)

# y = np.zeros_like(n)
c = (3*(1/2)**n - 2*(1/3)**n)*u
plt.xticks(np.linspace(-5, 5, 11))
plt.yticks(np.linspace(0, 1, 11))
plt.stem(n,h_invert(3)[::-1],'orange')
# plt.stem(n,h,'r')
plt.stem(n,c,'r',markerfmt='o')
plt.stem(n,x,'g',markerfmt='v')
# plt.stem(n,u,'b',markerfmt='x')
plt.show()
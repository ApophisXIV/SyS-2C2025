# TP1 - SyS 2C2025 - Grupo 🧉
- En la carpeta Docs se encuentra la consigna e informe del TP
- Para correr el codigo se necesita tener instalado `matplotlib` y `numpy` 
  Asumiendo que cuenta con pip como manejador de paquetes -> `pip install matplotlib numpy`
- La idea del código en principio fue separar la parte de gráficos del "procesamiento" (algo similar a un MVC) buscando mantener un código relativamente ordenado y prolijo tratando de minimizar el codigo spaghetti. Por eso también prioricé la legibilidad sobre la extensión del código, y por ser el primer TP buscamos que sea lo más transparente posible minimizando el uso de bibliotecas externas (solo numpy para convolución y matplotlib para los gráficos) resultando en un código "transparente" que usa solo estructructuras y tipos básicos del lenguaje mismo
- Para que los graficos queden en estilo latex, configuré la biblioteca matplotlib en el archivo `plot.py` con:
```python
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
    "font.size": 12,
}
plt.rcParams.update(params)
```
Si llega a tirar un error posibiblemente sea porque no está instalada la tipografia en el sistema, hay que instalarla con: 
`sudo apt-get install dvipng texlive-latex-extra texlive-fonts-recommended cm-super`

- Si la instalación llega a fallar recomienod usar un virtual  environment (Mirar este tutorial: https://www.hostinger.com/tutorials/how-to-create-a-python-virtual-environment?utm_campaign=Generic-Tutorials-DSA|NT:Se|LO:AR-EN&utm_medium=ppc&gad_source=1&gad_campaignid=20980196322&gbraid=0AAAAADMy-hYVVWvX0U87jAVcElcrN2V7I&gclid=EAIaIQobChMItaO4-4DajwMV4GNIAB0zHjPIEAAYASAAEgK0RfD_BwE)
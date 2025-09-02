import matplotlib.pyplot as plt
import math as m
import matplotlib.ticker as ticker

ROUNDING_NOISE_THRESHOLD = 1e-12


class Dirac_delta:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __repr__(self):
        plt.plot(self.x, self.y, "ro")  # Deltas en rojo
        plt.axhline(0, color="m", lw=0.85)  # Línea horizontal en y=0
        plt.axvline(0, color="m", lw=0.85)  # Línea vertical en x=0
        plt.xlabel("x")
        plt.ylabel("y")
        plt.title("Dirac Delta")
        plt.grid()
        return "\0"  # Devuelvo centinela para que no imprima nada

    def expand(self, factor):
        return Dirac_delta(self.x * factor, self.y * factor)

    def shift(self, shift_amount):
        return Dirac_delta(self.x + shift_amount, self.y)


class Onda:

    def __init__(
        self,
        x=None,
        y=None,
        deltas: list[Dirac_delta] = None,
        name: str = None,
        filter_rounding_noise=False,
    ):
        # Solo puntos de x
        if isinstance(x, list) and y is None:
            self.x = [i[0] for i in x]
            self.y = [i[1] for i in x]

        # Solo deltas
        elif x is None and deltas is not None:
            self.x = []
            self.y = []
            for delta in deltas:
                self.x.append(delta.x)
                self.y.append(delta.y)
        # Puntos de x e y
        elif x is not None and y is not None:
            self.x = x
            self.y = y
        else:
            raise ValueError("Debe proporcionar puntos x e y o solo deltas.")

        if deltas is None:
            self.deltas = []
        else:
            self.deltas = deltas
        self.n_points = len(x) if x is not None else len(deltas)
        self.name = name
        self.needs_filtering = filter_rounding_noise

        if filter_rounding_noise and self.y is not None:
            self.y = [
                0.0 if m.fabs(i) < ROUNDING_NOISE_THRESHOLD else i for i in self.y
            ]

    def __add__(self, other):
        return Onda(
            self.x,
            [a + b for a, b in zip(self.y, other.y)],
            name=self.name,
            filter_rounding_noise=self.needs_filtering,
        )

    def __sub__(self, other):
        return Onda(
            self.x,
            [a - b for a, b in zip(self.y, other.y)],
            name=self.name,
            filter_rounding_noise=self.needs_filtering,
        )

    def __mul__(self, scalar):
        return Onda(
            self.x,
            [scalar * y for y in self.y],
            name=self.name,
            filter_rounding_noise=self.needs_filtering,
        )

    def __truediv__(self, scalar):
        return Onda(
            self.x,
            [y / scalar for y in self.y],
            name=self.name,
            filter_rounding_noise=self.needs_filtering,
        )

    def __eq__(self, other):
        return self.x == other.x and self.y == other.y

    def __ne__(self, other):
        return not self.__eq__(other)

    def __repr__(self):

        # TODO Agregar deltas el mismo grafico
        if self.deltas:
            for delta in self.deltas:
                plt.stem(delta.x, delta.y, "ro", basefmt=" ")  # Deltas en rojo
        else:
            plt.plot(self.x, self.y)

        # Añadir título
        if self.name:
            plt.title(self.name)
        else:
            plt.title("Señal sin nombre")

        plt.xlabel("x")
        plt.ylabel("y")

        plt.axhline(0, color="m", lw=0.85)  # Línea horizontal en y=0
        plt.axvline(0, color="m", lw=0.85)  # Línea vertical en x=0

        loc_x = ticker.MultipleLocator(1)
        loc_y = ticker.MultipleLocator(0.5)

        plt.gca().xaxis.set_major_locator(loc_x)
        plt.gca().yaxis.set_major_locator(loc_y)

        plt.gca().tick_params(axis="x", rotation=45)
        plt.gca().tick_params(axis="y", rotation=45)
        plt.grid()
        plt.show()

        return "\0"  # Devuelvo centinela para que no imprima nada

    def __getitem__(self, index):
        return self.y[index]

    def __len__(self):
        return self.n_points

    def get_even_component(self):
        even_y = [(self.y[i] + self.y[::-1][i]) / 2 for i in range(self.n_points)]
        return Onda(
            self.x,
            even_y,
            deltas=self.deltas,
            name="f{self.name} - Componente par",
            filter_rounding_noise=self.needs_filtering,
        )

    def get_odd_component(self):
        odd_y = [(self.y[i] - self.y[::-1][i]) / 2 for i in range(self.n_points)]
        return Onda(
            self.x,
            odd_y,
            deltas=self.deltas,
            name="f{self.name} - Componente impar",
            filter_rounding_noise=self.needs_filtering,
        )

    def expand(self, factor):
        new_x = [x * factor for x in self.x]
        print(f"[{self.name}] -> Expansion de la señal por {factor}")
        return Onda(
            new_x,
            self.y,
            self.deltas,
            name=f"{self.name} > expansion por {factor}",
            filter_rounding_noise=self.needs_filtering,
        )

    def shift(self, shift_amount):
        new_x = [x + shift_amount for x in self.x]
        print(f"[{self.name}] -> Desplazamiento de la señal por {shift_amount}")
        return Onda(
            new_x,
            self.y,
            self.deltas,
            name=f"{self.name} > desplazamiento por {shift_amount}",
            filter_rounding_noise=self.needs_filtering,
        )


def plot_signal_components(original_signal: Onda):
    even_signal = original_signal.get_even_component()
    odd_signal = original_signal.get_odd_component()

    plt.figure(figsize=(12, 6))

    plt.subplot(1, 3, 1)
    plt.plot(
        original_signal.x, original_signal.y, label="Original Signal", color="blue"
    )
    plt.title("Original Signal")
    plt.grid()

    plt.subplot(1, 3, 2)
    plt.plot(even_signal.x, even_signal.y, label="Even Component", color="green")
    plt.title("Even Component")
    plt.grid()

    plt.subplot(1, 3, 3)
    plt.plot(odd_signal.x, odd_signal.y, label="Odd Component", color="red")
    plt.title("Odd Component")
    plt.grid()

    plt.tight_layout()
    plt.show()


if __name__ == "__main__":

    delta_1 = Dirac_delta(0, 3)
    delta_2 = Dirac_delta(1, 2)
    delta_3 = Dirac_delta(2, 2)
    delta_4 = Dirac_delta(3, 1)
    delta_5 = Dirac_delta(-1, 2)
    delta_6 = Dirac_delta(-2, 1)

    onda = Onda(
        name="x(t)",
        filter_rounding_noise=True,
        deltas=[delta_1, delta_2, delta_3, delta_4, delta_5, delta_6],
    )
    print(onda.shift(1).expand(1 / 3))

    # onda_a_tramos = Onda(
    #     [(0, 0), (0, 1), (10, 1), (20, 0)],
    #     name="x(t)",
    #     filter_rounding_noise=True,
    #     deltas=[delta_1, delta_2, delta_3],
    # )

    # print(onda_a_tramos.shift(1).expand(2))
    # print(onda_a_tramos.expand(2).shift(1))
    # print(onda_a_tramos.shift(-1).expand(2 / 3))
    # print(onda_a_tramos.shift(1).expand(-1 / 2))
    # print(onda_a_tramos.shift(1 / 2).expand(2))
    # o2 = o1.expand(3/2)
    # o1 = onda_a_tramos.expand(2/3)
    # o2 = o1.shift(-1)

    # print(onda_a_tramos)
    # print(o1)
    # print(o2)

    # print(onda_a_tramos)
    # print(onda_a_tramos.expand(2).shift(1))
    # print(onda_a_tramos.shift(1).expand(0.5))

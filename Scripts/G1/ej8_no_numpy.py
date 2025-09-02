import math as m
import matplotlib.pyplot as plt

SAMPLE_POINTS = 50

def get_even_signal_components(signal_dta: list[tuple,...]) -> list[tuple,...]:
  signal_y = signal_dta['y']
  return {'x':signal_dta['x'],'y': [(signal_y[i] + signal_y[::-1][i])/2 for i in range(signal_dta['n_points'])] }

def get_odd_signal_components(signal_dta: list[tuple,...]) -> list[tuple,...]:
  signal_y = signal_dta['y']
  return {'x':signal_dta['x'],'y': [(signal_y[i] - signal_y[::-1][i])/2 for i in range(signal_dta['n_points'])] }

def plot_signal_components(original_signal: list[tuple,...]):
    even_signal = get_even_signal_components(original_signal)
    odd_signal = get_odd_signal_components(original_signal)

    plt.figure(figsize=(12, 6))
    
    plt.subplot(1, 3, 1)
    plt.plot(original_signal['x'],original_signal['y'], label='Original Signal', color='blue')
    plt.title('Original Signal')
    plt.grid()
    
    plt.subplot(1, 3, 2)
    plt.plot(even_signal['x'],even_signal['y'], label='Even Component', color='green')
    plt.title('Even Component')
    plt.grid()
    
    plt.subplot(1, 3, 3)
    plt.plot(odd_signal['x'],odd_signal['y'], label='Odd Component', color='red')
    plt.title('Odd Component')
    plt.grid()
    
    plt.tight_layout()
    plt.show()

def generate_line(x0,x1,y0,y1):
  # Derivada de newton de toda la vida
  return {'x':list(range(SAMPLE_POINTS)),'y':[((y1-y0)/(x1-x0)) * i/(SAMPLE_POINTS-1) + y0 for i in range(SAMPLE_POINTS)]}


def filter_rounding_noise(noisy_signal,noise_floor_threshold=1e-12):
  return {
    'x':noisy_signal['x'], 
    'y': [0.0 if m.fabs(i) < noise_floor_threshold else i for i in noisy_signal['y']],
    'n_points':noisy_signal['n_points']
  }
  

def generate_pwlm_signal(domain, image):
    pwlm_signal= {'x': [],'y':[],'n_points':0}

    for i in range(len(domain)-1):
      line = generate_line(domain[i],domain[i+1],image[i],image[i+1])
      pwlm_signal['y'].extend(line['y'])
      pwlm_signal['n_points'] += len(line['y'])
    
    # Offset_del_dominio + (distancia_entre_extremos) * sweep_0_a_N_POINTS -> Los N_POINTS son generados por las funciones que van interpolando
    pwlm_signal['x'] = [domain[0] + (domain[-1] - domain[0]) * i / (pwlm_signal['n_points'] - 1) for i in range(pwlm_signal['n_points'])]
    
    return filter_rounding_noise(pwlm_signal)
  

def generate_signal_periodic(function):  
  domain = [i * (2*m.pi)/(SAMPLE_POINTS-1) for i in range(SAMPLE_POINTS)]
  return filter_rounding_noise({'x':domain , 'y': list(map(lambda i:function(i), domain)), 'n_points':SAMPLE_POINTS})

if __name__ == "__main__":
  
  coseno = generate_signal_periodic(m.cos)  
  seno = generate_signal_periodic(m.sin)
  
  plot_signal_components(coseno)
  plot_signal_components(seno)
  
  sgn = generate_pwlm_signal(
    domain= [-2, -1, 0, 1, 2],
    image= [0, 1, 0, 1, 1]
  )
  
  plot_signal_components(sgn)
  
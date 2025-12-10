import os

# Ruta de la carpeta con las imágenes
IMAGES_FOLDER = 'imagenes'

# Función para renombrar las imágenes
def rename_images():
    # Listar todas las imágenes en la carpeta
    photos = [f for f in os.listdir(IMAGES_FOLDER) if os.path.isfile(os.path.join(IMAGES_FOLDER, f))]
    
    for photo in photos:
        # Aquí extraemos el último fragmento del nombre, después del primer guion bajo (o cualquier otro delimitador)
        # En este caso, intentamos encontrar la última parte de la cadena que parece tener el formato 'yellow_opacity_35.png'
        name_parts = photo.split('_')  # Dividir el nombre por los guiones bajos
        new_name = "_".join(name_parts[-3:])  # Tomamos las últimas 3 partes (ajusta si es necesario)

        # Generar la ruta completa del archivo antiguo y nuevo
        old_path = os.path.join(IMAGES_FOLDER, photo)
        new_path = os.path.join(IMAGES_FOLDER, new_name)
        
        # Renombrar el archivo
        os.rename(old_path, new_path)
        print(f"Renombrado: {photo} -> {new_name}")

# Llamamos a la función para renombrar las imágenes
rename_images()

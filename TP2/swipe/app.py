import os
import shutil
from flask import Flask, render_template, request, redirect, send_from_directory
import urllib.parse

app = Flask(__name__)

# Rutas de las carpetas
IMAGES_FOLDER = "imagenes"
FAVORITES_FOLDER = "favoritas"

# Asegúrate de que las carpetas existan
os.makedirs(FAVORITES_FOLDER, exist_ok=True)

# Obtener lista de imágenes
photos = [f for f in os.listdir(IMAGES_FOLDER) if os.path.isfile(os.path.join(IMAGES_FOLDER, f))]
photo_index = 0


@app.route("/")
def index():
    global photo_index
    if photo_index >= len(photos):  # Si se han revisado todas las fotos
        return "Ya no hay más fotos para revisar."

    photo = photos[photo_index]
    # Codificar el nombre del archivo para asegurar que los caracteres especiales se manejen correctamente
    photo_path = os.path.join(IMAGES_FOLDER, urllib.parse.quote(photo))
    return render_template("index.html", photo=photo_path)


@app.route("/accept", methods=["POST"])
def accept():
    global photo_index
    photo = photos[photo_index]

    # Mover la imagen aceptada a la carpeta de favoritas
    shutil.move(os.path.join(IMAGES_FOLDER, photo), os.path.join(FAVORITES_FOLDER, photo))

    # Incrementar el índice para mostrar la siguiente foto
    photo_index += 1
    return redirect("/")


@app.route("/reject", methods=["POST"])
def reject():
    global photo_index
    # Incrementar el índice para mostrar la siguiente foto sin moverla
    photo_index += 1
    return redirect("/")


@app.route("/imagenes/<filename>")
def serve_image(filename):
    return send_from_directory(IMAGES_FOLDER, filename)


if __name__ == "__main__":
    app.run(debug=True)

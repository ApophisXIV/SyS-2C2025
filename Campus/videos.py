import yt_dlp

# Lista de URLs de YouTube
urls = [
    "https://www.youtube.com/watch?v=6SFj6X6eSz0",
    "https://www.youtube.com/watch?v=f4gzw4I_Jas",
    "https://www.youtube.com/watch?v=8JQLb2FmzRQ",
    "https://www.youtube.com/watch?v=nbLp5i9HZbM",
    "https://www.youtube.com/watch?v=wzHLkPHJgXs",
    "https://www.youtube.com/watch?v=J9dYx5RGppY",
    "https://www.youtube.com/watch?v=5knLQo2EX38",
    "https://www.youtube.com/watch?v=xu6C0BNIym0",
    "https://www.youtube.com/watch?v=CEylBtYtE7Y",
    "https://www.youtube.com/watch?v=Y9ObwFBe8c0",
    "https://www.youtube.com/watch?v=sfiPCNOIDVo",
    "https://www.youtube.com/watch?v=6VXrX6E89T8",
    "https://www.youtube.com/watch?v=tS01jMIYwGQ",
    "https://www.youtube.com/watch?v=aJcH1THmiyA",
    "https://www.youtube.com/watch?v=HPJ0gX-iRVA",
    "https://www.youtube.com/watch?v=ehj1yCcwwTc",
    "https://www.youtube.com/watch?v=7zsx0l4kiwU",
    "https://www.youtube.com/watch?v=8L-K1WYEYj0",
    "https://www.youtube.com/watch?v=_gUVWRdkfsU",
    "https://www.youtube.com/watch?v=aqX8a0AQ8BI",
    "https://www.youtube.com/watch?v=Veg_9UVFrzk",
    "https://www.youtube.com/watch?v=XyIY9x-lksY",
    "https://www.youtube.com/watch?v=DY7JmVglXkI",
    "https://www.youtube.com/watch?v=R9M3P44cUzg",
]

# Configuración yt-dlp
ydl_opts = {
    'quiet': True,
    'skip_download': True,
}

lines = []
total_hours = 0.0

with yt_dlp.YoutubeDL(ydl_opts) as ydl:
    for i, url in enumerate(urls, start=1):
        try:
            info = ydl.extract_info(url, download=False)
            title = info.get("title", "Título no encontrado")
            duration_seconds = info.get("duration", 0)
            duration_hours = round(duration_seconds / 3600, 2)
            total_hours += duration_hours
            lines.append(f"{i} - {title} - {duration_hours} hs - {url}")
            print(f"{i} - {title} - {duration_hours} hs")
        except Exception as e:
            lines.append(f"{i} - ERROR obteniendo datos - {url}")
            print(f"{i} - Error: {e}")

# Escribir todo al archivo
with open("lista_videos.txt", "w", encoding="utf-8") as f:
    f.write(f"Señales y sistemas 2C2025 - Horas totales: {round(total_hours, 2)}\n\n")
    for line in lines:
        f.write(line + "\n")


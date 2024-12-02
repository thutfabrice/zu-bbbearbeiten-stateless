# Basis-Image: Python 3.10 (oder eine andere Version, die du bevorzugst)
FROM python:3.11-slim-buster

# Arbeitsverzeichnis im Container erstellen und setzen
WORKDIR /app

# Kopiere die Abhängigkeitsdatei in das Arbeitsverzeichnis
COPY requirements.txt .

# Installiere die Abhängigkeiten
RUN pip install --no-cache-dir -r requirements.txt

# Kopiere die restlichen Anwendungsdateien ins Arbeitsverzeichnis
COPY . .

# Setze die Umgebungsvariable für Flask
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_ENV=development

# Exponiere den Standard-Port für Flask
EXPOSE 5000

# Startbefehl für die Flask-App
CMD ["flask", "run"]

LABEL org.opencontainers.image.source https://github.com/thutfabrice/zu-bbbearbeiten-stateless

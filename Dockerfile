# Utiliser une image Python de base pour Windows
FROM python:3.10-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances et d'application
COPY requirement.txt .
COPY . .

# Installer les dépendances via pip
RUN pip install -r requirement.txt

# Set environment variable for ChromeDriver path
RUN mv chromedriver.exe C:\chromedriver
ENV CHROMEDRIVER_PATH=C:\chromedriver\chromedriver.exe

# Define Robot Framework command
CMD ["robot", "Souscription/PPROD/B2B/Belgique.robot"]

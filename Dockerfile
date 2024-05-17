# Utiliser une image Python de base pour Windows
FROM python:3.10-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances et d'application
COPY requirement.txt .
COPY . .

# Installer les dépendances via pip
RUN pip install -r requirement.txt

RUN set PATH "C:\Users\maryam.khallala\Downloads\chromedriver-win64.zip\chromedriver-win64\chromedriver.exe;%PATH%"

# Définir la commande pour exécuter les tests Robot Framework
CMD ["robot", "Souscription/PPROD/B2B/Belgique.robot"]





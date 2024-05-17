# Base image (choose an appropriate Python version)
FROM python:3.10-slim

WORKDIR /app

# Copy requirements.txt and application files
COPY requirements.txt 
COPY . .  # Copy all other application files

# Install dependencies using pip
RUN pip install -r requirements.txt

# Set working directory for Robot Framework tests
WORKDIR /app/Souscription/PPROD/B2B

# Set environment variable for chromedriver (optional)
ENV CHROMEDRIVER_PATH=C:\Users\maryam.khallala\Downloads\chromedriver-win64.zip\chromedriver.exe  

# Expose port for web application (if applicable)
EXPOSE 8000  
# Replace with your application s port

# Command to execute when container starts (replace with your application s entry point)
CMD ["robot", "Belgique.robot"]

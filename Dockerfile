# Base image with Python 3.8
FROM python:3.8

# Install dependencies
RUN pip install confluent-kafka

# Copy your Python script
COPY main.py /app/main.py

# Set working directory
WORKDIR /app

# Entrypoint command to run your script
CMD ["python", "main.py"]

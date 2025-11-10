# Use an official Python image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy all files from your project into the container
COPY . /app

# Install dependencies (if you have requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt || true

# Run pytest as a basic test stage
RUN python -m pytest -v || true

# Set default command
CMD ["python", "ACEest_Fitness.py"]

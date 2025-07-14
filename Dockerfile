# Use official Python base image
FROM python:3.8-slim

# Set working directory inside container
WORKDIR /app

# Copy local files to container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port
EXPOSE 5000

# Run Flask app
CMD ["python", "app.py"]

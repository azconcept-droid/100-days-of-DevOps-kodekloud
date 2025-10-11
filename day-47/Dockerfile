# Use a Python base image
FROM python:alpine

# Set the working directory
WORKDIR /app

# Copy dependency file
COPY src/requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all application files
COPY src/ .

# Expose port 6000
EXPOSE 5002

# Run the application
CMD ["python", "server.py"]

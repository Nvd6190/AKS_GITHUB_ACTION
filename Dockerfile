# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy application code
COPY appy.py .
COPY templates ./templates

# Install Flask
RUN pip install flask

# Expose the Flask port
EXPOSE 8080

# Run the Flask app
CMD ["python", "appy.py"]
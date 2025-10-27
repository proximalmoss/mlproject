# Use official Python 3.13 image
FROM python:3.13-slim

# Set working directory inside container
WORKDIR /app

# Copy all your project files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your app uses (change if needed)
EXPOSE 8080

# Start the app
CMD ["python", "application.py"]
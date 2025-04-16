# Use a standard Python base image
FROM python:3.9-slim

# Set environment variable to make Python output unbuffered
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /app

# Copy dependency definitions
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy the application code
COPY . /app/

# For development, run the app using the built-in server; for production you may later use Gunicorn
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

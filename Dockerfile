# Use the official Python image as the base image
FROM python:3

# Set environment variable to ensure Python output is sent directly to terminal
ENV PYTHONUNBUFFERED=1

# Create and set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . /app/

# Specify the command to run on container startup
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

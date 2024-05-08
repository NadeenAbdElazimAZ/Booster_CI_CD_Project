# Use a base image with Python and pip pre-installed
FROM python:3.8

# Set environment variables for Python (optional)
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE myproject.settings

# Create and set the working directory
RUN mkdir /app
WORKDIR /app

# Copy the Django project files to the container
COPY . /app

# Install project dependencies using pip
RUN pip install -r requirements.txt

# Expose the port your Django app will run on
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

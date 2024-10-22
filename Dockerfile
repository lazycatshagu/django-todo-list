FROM python:3.9-slim

# Set the work directory
WORKDIR /data

# Install pip and Django
RUN pip install --upgrade pip
RUN pip install django==3.2

# If you have requirements.txt, you should use this instead
# COPY requirements.txt /data/
# RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /data
COPY . .

# Run migrations
RUN python manage.py migrate

# Expose port 8000 to the outside world
EXPOSE 8000

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


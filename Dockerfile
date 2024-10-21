FROM python:3

WORKDIR /data

<<<<<<< HEAD
# Install distutils for Python
RUN apt-get update && apt-get install -y python3-distutils

# Install Django
=======
RUN apt-get update && apt-get install -y python3-distutils

>>>>>>> 77c4f6af288d5826b3c4a589c38ea1fc9070fa61
RUN pip install django==3.2

COPY . .

# Run Django migrations
RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]




FROM python:3.8-slim-buster

RUN apt-get update -y && apt-get install -y awscli

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your application will run on
EXPOSE $PORT

CMD ["python3", "app.py"]

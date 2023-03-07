FROM python:3.10

RUN apt-get update && \
    apt-get install -y g++

WORKDIR /app

COPY . /app

# RUN pip install --no-cache-dir -r requirements.txt
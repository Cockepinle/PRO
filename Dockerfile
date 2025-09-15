FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    libpq-dev gcc && \
    pip install --upgrade pip && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app/

FROM python:3.11-slim

ENV PYTHONUNBUFFERED = 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    libpq-dev 

WORKDIR /project
COPY . /project/

RUN pip install pipenv && pipenv install --system

COPY . /project/
FROM python:3
MAINTAINER Continual Engine Pvt. Ltd.

ENV PYTHONBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

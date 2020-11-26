FROM python:3.10.0a2-alpine3.12

ENV PYTHONUNBUFFERED 1

COPY ./requirement.txt /requirement.txt
RUN pip install -r /requirement.txt

RUN mkdir /app
WORKDIR /app
COPY . /app/app

RUN adduser -D user
USER user 


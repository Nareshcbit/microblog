FROM python:alpine3.6
RUN apk add --no-cache bash

COPY . /build/
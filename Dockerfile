FROM python:alpine3.6
RUN apk add --no-cache bash

COPY requirement.txt /build/requirements.txt
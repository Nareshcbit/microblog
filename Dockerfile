FROM python:alpine3.6

ARG APP_DIR='/build'
RUN apk add --no-cache bash


COPY . ${APP_DIR}
RUN pip install --no-cache-dir -r ${APP_DIR}/requirements.txt

FROM python:alpine3.6

ARG APP_DIR='/build'

ENV FLASK_APP=microblog


COPY . ${APP_DIR}
RUN pip install --no-cache-dir -r ${APP_DIR}/requirements.txt

RUN apk add --no-cache bash

ENTRYPOINT ["flask", "run"]

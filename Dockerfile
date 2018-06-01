FROM python:alpine3.6



ENV FLASK_APP=microblog.py

ARG APP_DIR='/build'
COPY . ${APP_DIR}

RUN pip install --no-cache-dir -r ${APP_DIR}/requirements.txt


WORKDIR ${APP_DIR}

RUN apk add --no-cache bash

#ENTRYPOINT ["flask", "run"]

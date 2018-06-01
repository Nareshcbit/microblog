FROM python:alpine3.6


ARG APP_DIR='/build'
ENV FLASK_APP=microblog.py


RUN apk add --no-cache bash  && apk add --no-cache curl && apk add --no-cache nano

COPY . ${APP_DIR}
RUN pip install --no-cache-dir -r ${APP_DIR}/requirements.txt
WORKDIR ${APP_DIR}

EXPOSE 5000
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]

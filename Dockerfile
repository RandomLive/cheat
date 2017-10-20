FROM python:3-alpine

RUN apk add --update build-base linux-headers libxml2 libxml2-dev libxslt libxslt-dev libjpeg-turbo libjpeg-turbo-dev aria2 && \
  pip install cheat && \
  apk del build-base linux-headers libxml2-dev libxslt-dev libjpeg-turbo-dev && \
  rm -rf /var/cache/apk/*

RUN mkdir /cheat
WORKDIR /cheat

ENTRYPOINT ["cheat"]

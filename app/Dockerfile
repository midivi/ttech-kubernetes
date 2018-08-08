FROM alpine
RUN apk update && apk upgrade && apk add python3 bash
RUN mkdir /code
COPY ./app.py /code
WORKDIR /code

FROM alpine
RUN apk update && apk upgrade && apk add python3
RUN mkdir /code
COPY ./app.py /code
WORKDIR /code

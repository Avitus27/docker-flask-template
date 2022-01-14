#!/bin/bash
app="docker-flask-app"
docker build -t ${app} .
docker run -d -p 56789:80 \
  --name=${app} \
  -v $PWD:/app ${app}

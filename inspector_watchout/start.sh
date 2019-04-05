#!/bin/bash
app="docker.inspector"
docker build -t ${app} .
docker run -d -p 80:80 \
  --name=${app} \
  -v $PWD:/app ${app}

## Debug Flask locally
#export FLASK_APP=main.py
#export FLASK_ENV=development
#python3 -m flask run

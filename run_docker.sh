#!/usr/bin/env bash


docker build --tag=predict .

docker image ls

docker run -p 8000:80 predict

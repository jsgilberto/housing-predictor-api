#!/usr/bin/env bash

echo "Building image."
docker build -t housing-predictor-flask .

echo "Listing all images available."
docker image ls

echo "Running housing-predictor-flask."
echo "App is listening in port localhost:8000"
docker run -p 8000:5000 housing-predictor-flask 

echo "Listing running containers"
docker container ls

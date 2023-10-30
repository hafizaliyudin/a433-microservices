#!/bin/bash

#build images from dockerfile
docker build -t todo-app:v1

#create container from docker images
docker run -dp 3000:3000 --name todo-apps todo-app:v1


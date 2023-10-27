#!/bin/bash

# Build Docker image untuk backend
docker build -t a433-microservices/order-service:v1 .

# Login ke GitHub Package
echo $PASSWORD_GITHUB | docker login docker.pkg.github.com -u hafizaliyudin --password-stdin

# Push image ke GitHub Package
docker tag a433-microservices/order-service:v1 docker.pkg.github.com/hafizaliyudin/a433-microservices/order-service:v1
docker push docker.pkg.github.com/hafizaliyudin/a433-microservices/order-service:v1
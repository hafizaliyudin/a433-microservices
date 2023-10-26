#!/bin/bash

# Build Docker image untuk backend
docker build -t hafizaliyudin/karsajobs:latest .

# Login ke GitHub Package
echo $PASSWORD_GITHUB | docker login docker.pkg.github.com -u hafizaliyudin --password-stdin

# Push image ke GitHub Package
docker tag hafizaliyudin/karsajobs:latest docker.pkg.github.com/hafizaliyudin/hafizaliyudin/karsajobs:latest
docker push docker.pkg.github.com/hafizaliyudin/hafizaliyudin/karsajobs:latest

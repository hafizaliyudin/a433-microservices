#!/bin/bash

# Build Docker image untuk frontend
docker build -t hafizaliyudin/karsajobs-ui:latest .

# Login ke GitHub Package
echo $PASSWORD_GITHUB | docker login docker.pkg.github.com -u hafizaliyudin --password-stdin

# Push image ke GitHub Package
docker tag hafizaliyudin/karsajobs-ui:latest docker.pkg.github.com/hafizaliyudin/hafizaliyudin/karsajobs-ui:latest
docker push docker.pkg.github.com/hafizaliyudin/hafizaliyudin/karsajobs-ui:latest


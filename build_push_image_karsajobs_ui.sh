#!/bin/bash

docker build -t ghcr.io/muhammadfarrel4148/karsajobs-ui:latest .
echo $PASSWORD_GITHUB_REGISTRY | docker login ghcr.io -u muhammadfarrel4148 --password-stdin
docker push ghcr.io/muhammadfarrel4148/karsajobs-ui:latest
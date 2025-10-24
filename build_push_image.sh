#!/bin/bash

# Melakukan build docker image bernama item-app dengan versi v1
docker build -t item-app:v1 .

# Melihat daftar images
docker images

# Melakukan rename nama image sesuai dengan repository GitHub Container Registry
docker tag item-app:v1 ghcr.io/muhammadfarrel4148/item-app:latest

# Melakukan login ke GitHub Registry via Terminal
echo $PASSWORD_GITHUB_REGISTRY | docker login ghcr.io -u muhammadfarrel4148 --password-stdin

# Mengunggah image ke Github Container Registry
docker push ghcr.io/muhammadfarrel4148/item-app:latest
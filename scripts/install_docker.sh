#!/bin/bash

sudo apt update -y

sudo apt install -y docker.io docker-compose-v2

sudo systemctl enable docker

sudo systemctl start docker

sudo usermod -aG docker $USER

docker --version

docker compose version
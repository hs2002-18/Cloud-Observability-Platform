#!/bin/bash

sudo apt update -y

sudo apt install -y docker.io docker-compose-v2 git

sudo systemctl enable docker

sudo systemctl start docker

sudo usermod -aG docker ubuntu
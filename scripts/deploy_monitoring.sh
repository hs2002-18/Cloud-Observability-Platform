#!/bin/bash

set -e

cd ~/Cloud-Observability-Platform

git pull origin $(git branch --show-current)

cd docker

sudo docker compose up -d --build
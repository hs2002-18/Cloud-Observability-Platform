#!/bin/bash

set -e

cd ~/Cloud-Observability-Platform

git pull origin $(git branch --show-current)

cd docker

docker compose up -d --build
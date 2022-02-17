#!/usr/bin/env bash

IMAGE=grachevko/dji-rtsp-simple-server
TAG=${TAG:-latest}

docker build -t "${IMAGE}:${TAG}" .
docker push "${IMAGE}:${TAG}"

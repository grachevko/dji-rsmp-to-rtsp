#!/usr/bin/env bash

docker run -d --restart always -e RTSP_PROTOCOLS=tcp -p 8554:8554 -p 1935:1935 --network host --name rtsp-simple-server grachevko/dji-rtsp-simple-server

#!/bin/bash
image=pshcyrill/tango-java
ver=latest

docker pull ${image}:${ver}

TANGO_HOST=localhost:10000
xhost +local:
docker run --network host -v /tmp/.X11-unix:/tmp/.X11-unix -e TANGO_HOST=${TANGO_HOST} -e DISPLAY=unix$DISPLAY ${image}:${ver} /usr/bin/jive

#!/bin/bash

docker stop smt7
docker rm smt7
docker build --no-cache -t stepankoci/smt7 . && \
./run.sh

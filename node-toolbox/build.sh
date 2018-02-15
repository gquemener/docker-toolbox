#!/bin/sh

set -ex

docker build -t gquemener/node-toolbox:latest .

if [[ $1 = "--push" ]]; then
    docker push gquemener/node-toolbox:latest
fi

#!/bin/sh

set -ex

docker build -t gquemener/php-toolbox:latest .

if [[ $1 = "--push" ]]; then
    docker push gquemener/php-toolbox:latest
fi

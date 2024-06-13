#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-The-Smartmeme-Endeavor/smartmemed-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/smartmemed docker/bin/
cp $BUILD_DIR/src/smartmeme-cli docker/bin/
cp $BUILD_DIR/src/smartmeme-tx docker/bin/
strip docker/bin/smartmemed
strip docker/bin/smartmeme-cli
strip docker/bin/smartmeme-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker

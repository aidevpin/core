#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-ultronai/ultronaid-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/ultronaid docker/bin/
cp $BUILD_DIR/src/ultronai-cli docker/bin/
cp $BUILD_DIR/src/ultronai-tx docker/bin/
strip docker/bin/ultronaid
strip docker/bin/ultronai-cli
strip docker/bin/ultronai-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker

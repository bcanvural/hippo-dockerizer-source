#!/usr/bin/env bash

IMAGE=bcanvural/hippo-dockerizer:v1

mvn clean package
docker build -t ${IMAGE} .
docker run  \
       --mount type=bind,source=$(pwd)/hippoproject/myhippoproject/,target=/home/myhippoproject/ \
       ${IMAGE}


#!/usr/bin/env bash
mvn clean verify -T2C -DskipTests=true
mvn -Pdist
docker build -t dev/myhippoproject:v1 .
docker run -p 8080:8080 -p 8000:8000 dev/myhippoproject:v1
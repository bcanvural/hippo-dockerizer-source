#!/usr/bin/env bash

##Prepare development environment script

#Remove and recreate an empty hippo project
rm -rf hippoproject/*
mkdir -p hippoproject
cd hippoproject
echo -ne "\n" | mvn org.apache.maven.plugins:maven-archetype-plugin:2.4:generate \
-DarchetypeRepository=https://maven.onehippo.com/maven2 \
-DarchetypeGroupId=org.onehippo.cms7 \
-DarchetypeArtifactId=hippo-project-archetype \
-DarchetypeVersion=12.4.0
#!/usr/bin/env bash

docker login
docker build . -t treppo/alpine-jdk9-leiningen
docker push treppo/alpine-jdk9-leiningen

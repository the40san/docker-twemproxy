#!/bin/sh -e 

VERSION=0.4.1
REPONAME=the40san

docker build -t ${REPONAME}/twemproxy:${VERSION}-stretch -f ubuntu/stretch/Dockerfile ${BUILD_OPTION} .
docker build -t ${REPONAME}/twemproxy:${VERSION}-xenial -f ubuntu/xenial/Dockerfile ${BUILD_OPTION} .

docker tag ${REPONAME}/twemproxy:${VERSION}-stretch ${REPONAME}/twemproxy:latest
docker tag ${REPONAME}/twemproxy:${VERSION}-stretch ${REPONAME}/twemproxy:${VERSION}

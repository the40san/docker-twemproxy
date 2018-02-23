#!/bin/sh -e 

VERSION=0.4.1
REPONAME=the40san

docker login
docker push ${REPONAME}/twemproxy:latest
docker push ${REPONAME}/twemproxy:${VERSION}
docker push ${REPONAME}/twemproxy:${VERSION}-stretch 
docker push ${REPONAME}/twemproxy:${VERSION}-xenial 

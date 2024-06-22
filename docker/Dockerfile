FROM debian:stretch
LABEL maintainer="Ultronai Developers <dev@ultronai.org>"
LABEL description="Dockerised UltronaiCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/

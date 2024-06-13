FROM debian:stretch
LABEL maintainer="Smartmeme Developers <admin@smartmeme.net>"
LABEL description="Dockerised SmartmemeCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/

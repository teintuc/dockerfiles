FROM ubuntu:latest

MAINTAINER Charles Teinturier "teintu.c@gmail.com"

RUN set -xe \
 && packages=" \
   net-tools \
   vim \
   curl \
   wget \
   unzip \
   git \
 " \
 && apt-get update \
 && apt-get install -y $packages \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /repo

ENTRYPOINT ["/bin/bash"]

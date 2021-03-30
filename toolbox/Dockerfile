FROM kalilinux/kali-rolling:latest

MAINTAINER Charles Teinturier "teintu.c@gmail.com"

RUN set -xe \
 && packages=" \
   net-tools \
   iproute2 \
   coreutils \
   findutils \
   psmisc \
   curl \
   wget \
   nmap \
   tcpdump \
   netcat \
   iputils-ping \
   traceroute \
   sysstat \
   htop \
   dstat \
   dnsutils \
   bind9utils \
   openssh-client \
   awscli \
   jq \
   docker \
   default-mysql-client \
   procps \
   sublist3r \ 
 " \
 && apt-get update \
 && apt-get install -y $packages \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

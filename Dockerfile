FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y curl libgnutls-openssl27 openssl

RUN apt-get autoremove -y && \
    apt-get autoclean -y && \
    rm -rf /var/lib/apt/lists/*

RUN openssl version -a 
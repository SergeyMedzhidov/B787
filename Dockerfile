FROM ubuntu:20.04

ARG FAV=""

RUN apt-get update && \
    apt-get install -y wget && \
    mkdir -p file

WORKDIR /file

RUN wget -O favicon.ico $FAV/favicon.ico

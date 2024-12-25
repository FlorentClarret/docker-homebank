FROM ubuntu:24.04

ARG VERSION="5.7.4-1build4"

ENV DISPLAY=:0

RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:mdoyen/homebank && \
    apt update && \
    apt install -y homebank=$VERSION && \
    rm -rf /var/lib/apt/lists/*

CMD ["/usr/bin/homebank"]

FROM ubuntu:18.04
RUN curl -s https://packagecloud.io/install/repositories/fdio/release/script.deb.sh | sudo bash
RUN apt-get update \
 && apt-get install -y hicn-plugin
 && rm -rf /var/lib/apt/lists/*

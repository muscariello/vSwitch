FROM ubuntu:18.04
RUN apt-get update \
 && apt-get install -y curl --no-install-recommends \
RUN curl -s https://packagecloud.io/install/repositories/fdio/release/script.deb.sh | bash
RUN apt-get update \
 && apt-get install -y hicn-plugin --no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

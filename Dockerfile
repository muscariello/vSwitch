FROM ubuntu:18.04
RUN apt-get update \
 && apt-get install -y curl
RUN curl -OL https://github.com/muscariello/build-scripts/raw/master/deb/libyang_0.16-r2_amd64.deb \
 && curl -OL https://github.com/muscariello/build-scripts/raw/master/deb/sysrepo_0.7.7_amd64.deb \
 && curl -OL https://github.com/muscariello/build-scripts/raw/master/deb/libnetconf2_0.12-r1_amd64.deb \
 && curl -OL https://github.com/muscariello/build-scripts/raw/master/deb/netopeer2_0.7-r1_amd64.deb
RUN apt-get install -y ./libyang_0.16-r2_amd64.deb ./sysrepo_0.7.7_amd64.deb \
                       ./libnetconf2_0.12-r1_amd64.deb ./netopeer2_0.7-r1_amd64.deb
RUN curl -s https://packagecloud.io/install/repositories/fdio/release/script.deb.sh | bash
RUN apt-get update \
 && apt-get install -y hicn-plugin --no-install-recommends \
 && rm -rf /var/lib/apt/lists/*
RUN apt-get remove -y curl \
 && apt-get autoremove -y

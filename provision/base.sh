#!/bin/sh
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install \
bzip2 \
ca-certificates \
coreutils \
curl \
gzip \
lsb-release \
man-db \
patch \
sed \
software-properties-common \
tar \
unzip \
wget \
zip

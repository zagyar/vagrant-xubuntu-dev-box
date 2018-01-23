#!/bin/sh

# UNTESTED!

# Install AWS CLI
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install subversion

# Add Repo
sudo add-apt-repository -y ppa:rabbitvcs/ppa
sudo apt-get update

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install thunar-vcs-plugin
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install rabbitvcs-thunar
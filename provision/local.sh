#!/bin/sh
# Add your local customisation here, e.g.
# sudo timedatectl set-timezone Australia/Sydney

touch /home/$(whoami)/.bashrc
echo "export EDITOR=vim" >> /home/$(whoami)/.bashrc
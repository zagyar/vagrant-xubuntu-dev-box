#!/bin/sh
# Add your local customisation here, e.g.

sudo timedatectl set-timezone Asia/Singapore

touch /home/$(whoami)/.bashrc
echo "export EDITOR=vim" >> /home/$(whoami)/.bashrc
#!/bin/sh

# create folder for Open Sans
sudo mkdir -p /usr/local/share/fonts/truetype/open-sans

# download font
curl -fsSL -o /tmp/open-sans.zip https://www.fontsquirrel.com/fonts/download/open-sans

# unzip
sudo unzip -q /tmp/open-sans.zip -d /usr/local/share/fonts/truetype/open-sans

# remove temp file
sudo rm -f /tmp/open-sans.zip

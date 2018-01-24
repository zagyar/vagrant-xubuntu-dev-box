#!/bin/sh

# https://sourceforge.net/projects/boost/files/boost/1.62.0/boost_1_62_0.tar.gz
# https://sourceforge.net/projects/boost/files/boost/1.62.0/boost_1_63_0.tar.gz
# https://sourceforge.net/projects/boost/files/boost/1.62.0/boost_1_64_0.tar.gz
# https://sourceforge.net/projects/boost/files/boost/1.62.0/boost_1_65_0.tar.gz
# https://sourceforge.net/projects/boost/files/boost/1.62.0/boost_1_65_0.tar.gz
# https://sourceforge.net/projects/boost/files/boost/1.62.0/boost_1_66_0.tar.gz

# Download boost into shared folder
BOOST_URL="https://sourceforge.net/projects/boost/files/boost/1.62.0/boost_1_66_0.tar.gz"
BOOST_VERSION="1_66_0"

# Download Eclipse IDE into shared folder
if [ ! -f /vagrant_data/boost_$(BOOST_VERSION).tar.gz ]; then
  echo 'Downloading Boost $(BOOST_VERSION)'
  wget -p "$BOOST_URL" -O /vagrant_data/boost_$(BOOST_VERSION).tar.gz
  sudo tar -zxf /vagrant_data/boost_$(BOOST_VERSION).tar.gz --directory /opt
fi

# Install boost on /usr/local/include, /usr/local/lib
/opt/boost_$(BOOST_VERSION)/bootstrap.sh --prefix=/usr/local --show-libraries --with-libraries=date_time
/opt/boost_$(BOOST_VERSION)/b2 install


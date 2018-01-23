# Eclipse IDE for Java Developers
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-java-oxygen-2-win32.zip
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-java-oxygen-2-win32-x86_64.zip
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-java-oxygen-2-linux-gtk.tar.gz
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-java-oxygen-2-linux-gtk-x86_64.tar.gz

# Eclipse IDE for Java EE Developers
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-jee-oxygen-2-win32.zip
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-jee-oxygen-2-win32-x86_64.zip
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-linux-gtk.tar.gz
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-jee-oxygen-2-linux-gtk-x86_64.tar.gz

# Eclipse IDE for C/C++ Developers
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-win32.zip
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-win32-x86_64.zip
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-linux-gtk.tar.gz
# http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz



# Download Eclipse IDE into shared folder
if [ ! -f /vagrant_data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz ]; then
  echo 'Downloading Eclipse C++ Oxygen Edition'
  curl -fsSL --output /vagrant_data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz
fi

# Unpack into /opt
sudo tar -zxf /vagrant_data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz --directory /opt

# Set Eclipse global accessable 
touch /home/$(whoami)/.bashrc
echo "alias ecplise='/opt/eclipse/eclipse'" >> /home/$(whoami)/.bashrc
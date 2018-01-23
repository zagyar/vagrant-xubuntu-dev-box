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




if [ ! -f /vagrant/share/ideaIC-2017.1.2-no-jdk.tar.gz ]; then
  echo 'Downloading Eclipse C++ Oxygen Edition'
  curl -fsSL --output /vagrant_data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz
fi
sudo tar -zxf /vagrant_data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz --directory /opt

# Set Eclipse global accessable 
touch /home/$(whoami)/.bashrc
echo "alias ecplise='/opt/eclipse/eclipse'" >> /home/$(whoami)/.bashrc
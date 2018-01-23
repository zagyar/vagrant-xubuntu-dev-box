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
  curl -fsSL --output /vagrant/share/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz http://eclipse.bluemix.net/packages/oxygen.2/data/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz
fi
sudo tar -zxf /vagrant/share/eclipse-cpp-oxygen-2-linux-gtk-x86_64.tar.gz --directory /opt
mkdir -p $HOME/bin


# ln -s /opt/idea-IC-171.4249.39/bin/idea.sh $HOME/bin/idea.sh
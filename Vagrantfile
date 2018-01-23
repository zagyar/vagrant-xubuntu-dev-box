# Default login: vagrant / vagrant
# Start GUI: startx

Vagrant.configure(2) do |config|
  # Ubuntu 16.04
  config.vm.box = 'ubuntu/xenial64'
  config.vm.box_check_update = false

  # Share an additional folder to the guest VM
  config.vm.synced_folder 'data', '/vagrant_data'

  # Proxy Configuration 
  # (expect: vagrant plugin install vagrant-proxyconf)
  config.proxy.http     = "http://baligw.mitrais.com:8080"
  config.proxy.https    = "http://baligw.mitrais.com:8080"
  config.proxy.no_proxy = "localhost,127.0.0.1"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    vb.name = 'xubuntu2'
    vb.memory = 4096
    vb.cpus = 1
    vb.customize ['modifyvm', :id, '--vram', '32']
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
  end

  # Install xfce and virtualbox additions
  # config.vm.provision "shell", inline: "sudo apt-get update"
  # config.vm.provision "shell", inline: "sudo apt-get install -y xfce4 virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11"


  # Provisioning
  config.vm.provision "shell", inline: "sudo apt-get update"
  config.vm.provision 'shell', privileged: false, path: 'provision/base.sh', name: 'base.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/xfce4.sh', name: 'xfce4.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/java.sh', name: 'java.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/apps.sh', name: 'apps.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/git.sh', name: 'git.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/google-chrome.sh', name: 'google-chrome.sh'

  # PROV: IDE
  config.vm.provision 'shell', privileged: false, path: 'provision/atom.sh', name: 'atom.sh'
  config.vm.provision 'shell', privileged: false, path: 'provision/eclipse.sh', name: 'eclipse.sh'

  # Solve Problem with missin Xwrapper.config
  # config.vm.provision "shell", inline "sudo apt-get install xserver-xorg-legacy"

  # config.vm.provision "shell", inline: "sudo VBoxClient --clipboard"
  # config.vm.provision "shell", inline: "sudo VBoxClient --draganddrop"
  # config.vm.provision "shell", inline: "sudo VBoxClient --display"
  # config.vm.provision "shell", inline: "sudo VBoxClient --checkhostversion"
  # config.vm.provision "shell", inline: "sudo VBoxClient --seamless"
  
  # Enhance fonts in xfce4
  # config.vm.provision "shell", inline: "sudo xfconf-query -c xsettings -p /Xft/Antialias -s 1"
  # config.vm.provision "shell", inline: "sudo xfconf-query -c xsettings -p /Xft/HintStyle -s hintmedium"
  # config.vm.provision "shell", inline: "sudo xfconf-query -c xsettings -p /Xft/DPI -s 96"

  # Permit anyone to start the GUI
  config.vm.provision "shell", inline: "sudo sed -i 's/allowed_users=.*$/allowed_users=anybody/' /etc/X11/Xwrapper.config"

end
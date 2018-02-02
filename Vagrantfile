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

  # Provisioning
  # config.vm.provision "shell", inline: "sudo apt-get update"
  # config.vm.provision 'shell', privileged: false, path: 'provision/base.sh', name: 'base.sh'
  # config.vm.provision 'shell', privileged: false, path: 'provision/xfce4.sh', name: 'xfce4.sh'
  # config.vm.provision 'shell', privileged: false, path: 'provision/jdk.sh', name: 'jdk.sh'
  # config.vm.provision 'shell', privileged: false, path: 'provision/apps.sh', name: 'apps.sh'
  # config.vm.provision 'shell', privileged: false, path: 'provision/google-chrome.sh', name: 'google-chrome.sh'

  # PROV: SCM
  # config.vm.provision 'shell', privileged: false, path: 'provision/scm/git.sh', name: 'git.sh'
  # config.vm.provision 'shell', privileged: false, path: 'provision/scm/svn.sh', name: 'svn.sh'

  # PROV: IDE
  # config.vm.provision 'shell', privileged: false, path: 'provision/ide/atom.sh', name: 'atom.sh'
  # config.vm.provision 'shell', privileged: false, path: 'provision/ide/eclipse.sh', name: 'eclipse.sh'
  # config.vm.provision 'shell', privileged: false, path: 'provision/ide/netbeans.sh', name: 'netbeans.sh'
  # config.vm.provision 'shell', privileged: false, path: 'provision/ide/vsc.sh', name: 'vsc.sh'

  # PROV: C++
  # config.vm.provision 'shell', privileged: false, path: 'provision/lang/cpp/doxygen.sh', name: 'doxygen.sh'
  # config.vm.provision 'shell', privileged: false, path: 'provision/lang/cpp/core.sh', name: 'core.sh'
  # config.vm.provision 'shell', privileged: false, path: 'provision/libs/boost.sh', name: 'boost.sh'

  # PROV: Ruby
  config.vm.provision 'shell', privileged: false, path: 'provision/ruby.sh', name: 'ruby.sh'

  # Enhance fonts in xfce4
  # config.vm.provision "shell", inline: "sudo xfconf-query -c xsettings -p /Xft/Antialias -s 1"
  # config.vm.provision "shell", inline: "sudo xfconf-query -c xsettings -p /Xft/HintStyle -s hintmedium"
  # config.vm.provision "shell", inline: "sudo xfconf-query -c xsettings -p /Xft/DPI -s 96"

  # Permit anyone to start the GUI
  # config.vm.provision "shell", inline: "sudo echo 'allowed_users=anybody' &amp;gt; /etc/X11/Xwrapper.config"
  # config.vm.provision "shell", inline: "sudo echo 'xfce4-session' &amp;gt; /home/vagrant/.xsession"
  # config.vm.provision "shell", inline: "sudo echo 'xfce4-session' &amp;gt; /root/.xsession"
  

end
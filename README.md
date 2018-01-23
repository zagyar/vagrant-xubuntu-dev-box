# vagrant-xubuntu-dev-box

A vagrant based spinnup to provide a development environment using [Ubuntu](https://xubuntu.org/). 
The desktop environment is [XFCE](https://xfce.org/) since it is extreme lightweight, fast and low on system resources. 

The Vagrant base box is the official [Ubuntu 16.04](https://atlas.hashicorp.com/ubuntu/boxes/xenial64) 64-bit box 
available from Hashicorp Atlas.

## Installation

Prerequisites:

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads). This has been tested with version 5.1.20
* [Vagrant](https://vagrantup.com/downloads.html). This has been tested using version 1.9.4

For Proxy Support:

* [Vagrant Proxy Plugin](). This plugin is needed if the box is spinned up behind proxy. 

To install the vagrant proxy plugin run this command:

	vagrant plugin install vagrant-proxyconf

The proxy can be configured in the `Vagrantfile`:
	
	config.proxy.http     = "http://yourproxy:8080"
	config.proxy.https    = "http://yourproxy:8080"
	config.proxy.no_proxy = "localhost,127.0.0.1"


Clone this repository, then from the repository folder run this command:

    vagrant up && vagrant reload

The `ubuntu` user password is `ubuntu`.

## Notes

* Add your local customisation to `provision/local.sh`.
* Edit `provision/nodejs.sh` to select your NodeJS version.
* [nvm](https://github.com/creationix/nvm) is also installed, so it provides another mechanism to switch to other NodeJS versions.
* The Vagrantfile copies your private key to the VM so you can access Github et al. via SSH. It assumes the private key file can be found in `~/.ssh/id_rsa` on the host machine.
* You can also SSH to the VM as user `ubuntu`, using `vagrant ssh`

## Ideas

* the share folder should be accessable with a variable
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "fedora/35-cloud-base"
  config.vm.define "vagrant-fedora-ansible"
  config.vm.hostname = "vagrant-fedora-ansible"
  config.vm.provider :virtualbox do |vb|
    vb.name = "vagrant-fedora-ansible"
  end
  
  #config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true, host_ip: "127.0.0.1"
  
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  config.vm.synced_folder "./data", "/vagrant_data", create: true

  config.vm.provider "virtualbox" do |vb|
    #vb.gui = true
	vb.check_guest_additions = false
    vb.cpus = 2
    vb.memory = "4096"
  end

  config.vm.provision "shell", privileged: false, path: "bootstrap.sh"

end
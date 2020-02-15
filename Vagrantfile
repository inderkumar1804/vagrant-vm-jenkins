# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|

  config.vm.provision "shell", path: "bootstrap.sh"

  # Jenkins Server Setup
  config.vm.define "svrjend001" do |svrjend001|
    svrjend001.vm.box = "centos/7"
    svrjend001.vm.hostname = "svrjend001.example.com"
    svrjend001.vm.network "private_network", ip: "172.42.42.102"
    svrjend001.vm.provider "virtualbox" do |v|
      v.name = "svrjend001"
      v.memory = 2048
      v.cpus = 2
      # Prevent VirtualBox from interfering with host audio stack
      v.customize ["modifyvm", :id, "--audio", "none"]
    end
    svrjend001.vm.provision "shell", path: "bootstrap_svrjend001.sh"
  end
end

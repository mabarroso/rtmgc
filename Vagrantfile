# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.provider :virtualbox do |vb|
    vb.customize [
                  "modifyvm", :id,
                  "--memory", "1024",
                  "--cpus", "1",
                 ]
  end

  config.vm.define "sync" do |sync|
    sync.vm.hostname = "sync"

    sync.vm.network :private_network, ip: "172.16.1.2"

    sync.vm.synced_folder  '.', '/vagrant'
    sync.vm.provision "shell", path: "vagrant_provision_sync.sh"
  end

end

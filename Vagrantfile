# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|




  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "paulovn/ml-base64" #continuumio/miniconda3"
    vm2.vm.hostname = "miniconda3"
    vm2.vm.network "forwarded_port", guest: 8080, host: 8080
    vm2.vm.network "forwarded_port", guest: 1234, host: 1234
    vm2.vm.network "forwarded_port", guest: 8888, host: 8889
    #agregar el root path como folder compartido en la ruta /vagrant
    vm2.vm.synced_folder ".", "/home/vagrant/", disabled: false
    vm2.vm.network "private_network", ip: "192.168.124.100"
    #vm2.vm.provision "file", source: "mongoimport-everything.sh", destination: "/home/vagrant/mongoimport-everything.sh"
    vm2.vm.provision "shell", path: "requirements.sh"

    vm2.vm.provider "virtualbox" do |vb|
      # Customize the amount of memory on the VM:
      vb.memory = 2048
      vb.cpus = 2
      vb.name ="Trafico"
    end
  end
end
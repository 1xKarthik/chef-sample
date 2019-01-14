# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    # v.cpus = 2
  end

  config.vm.define "node1" do |node1|
    node1.vm.box = "centos/7"
    node1.vm.hostname = "node1"
    node1.vm.network "private_network", ip: "192.168.33.10"
  end

  config.vm.define "web" do |web|
    web.vm.box = "bento/ubuntu-14.04"
    web.vm.hostname = "web"
    web.vm.network "private_network", ip: "192.168.33.20"
    web.vm.network "forwarded_port", guest:80, host:8080, auto_correct: true
  end

  config.vm.define "db" do |db|
    db.vm.box = "bento/ubuntu-14.04"
    db.vm.hostname = "db"
    db.vm.network "private_network", ip: "192.168.33.30"
  end

end

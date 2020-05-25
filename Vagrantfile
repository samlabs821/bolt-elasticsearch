# -*- mode: ruby -*-
# vi: set ft=ruby :

$nodes_count = 3

if ENV['NODES'].to_i > 0 && ENV['NODES']
  $nodes_count = ENV['NODES'].to_i
end

Vagrant.configure('2') do |config|
  config.vm.box = 'centos/7'
  config.ssh.forward_agent = true
  config.ssh.insert_key = false
  config.ssh.private_key_path = ['~/.vagrant.d/insecure_private_key', '~/.ssh/id_rsa'] 
  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/authorized_keys" 
  config.vm.network "private_network", type: "dhcp"

  (1..$nodes_count).each do |i|
    config.vm.define "node#{i}"
  end
end

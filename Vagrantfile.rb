# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box		='geerlingguy/centos7
  config.vm.hostname		='ops.lab.com'
  config.vm.network ::private_network, ip: "192.168.55.55"
end

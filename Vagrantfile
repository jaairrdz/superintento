# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define :config do |config|
   config.vm.box		='geerlingguy/centos7'
   config.vm.hostname		='ops.lab.com'
   config.vm.network :private_network, ip: "192.168.1.2"
  end
  config.vm.define :jenkins do |jenkins|
   jenkins.vm.box         ='geerlingguy/centos7'
   jenkins.vm.hostname            ='jenkins.lab.com'
   jenkins.vm.network :private_network, ip: "192.168.1.3"
  end

  config.vm.define :prod do |prod|
   prod.vm.box         ='geerlingguy/centos7'
   prod.vm.hostname            ='prod.lab.com'
   prod.vm.network :private_network, ip: "192.168.1.4"
  end
end

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.vm.define 'ap' do |c|
    c.vm.box = 'ubuntu/trusty64'
    c.vm.box_version = '20150427.0.0'
    c.vm.network :private_network, ip: '192.168.88.23'
    c.vm.hostname = 'ap.local'
    c.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'test.yml'
      ansible.verbose = 'vv'
      ansible.inventory_path = 'vagrant-inventory'
      ansible.host_key_checking = false
    end
  end
end

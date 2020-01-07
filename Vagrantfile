# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # the base box is ubuntu 18.04 LTS
  config.vm.box = "bento/ubuntu-18.04"

  # need to check update
  config.vm.box_check_update = true

  # forward guest 80 to host 8080
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Use 777 for the default mount folder. which works for Ubuntu and Mac, windows always got 777
  config.vm.synced_folder ".", "/vagrant", \
    :disabled => false, \
    :mount_options  => ['dmode=777,fmode=777']

  config.vm.provider "virtualbox" do |vb|
     # Don't show the GUI unless you have some bug
     vb.gui = false
     # Customize the amount of memory on the VM:
     vb.memory = "1024"
     # Config the name
     vb.name = "miemieda"
  end


  # Run Ansible from the Vagrant Guest
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "site.yml"
  end
end

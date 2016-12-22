# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.synced_folder "C:\\code", "/mounted/code"
  config.vm.synced_folder "C:\\shared_root", "/mounted/cdrive"
  config.vm.synced_folder "E:\\shared_root", "/mounted/edrive"
  config.vm.synced_folder "F:\\shared_root", "/mounted/fdrive"

end

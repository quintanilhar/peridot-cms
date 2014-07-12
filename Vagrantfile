# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  #if Vagrant.has_plugin?("vagrant-proxyconf")
  #    config.proxy.http     = "http://rquintanilha:alves2090@proxy.devel:8180/"
  #    config.proxy.https    = "http://rquintanilha:alves2090@proxy.devel:8180/"
  #    config.proxy.no_proxy = ""
  #end
  
  config.vm.box = "CentOS_6.5_x64"

  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box"

  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024  
  end

  config.vm.provision :shell, :path => "env/shell/initial_setup.sh"
  
  config.vm.provision :shell, :path => "env/shell/puppet_modules_setup.sh"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "env/puppet/manifests"
    puppet.manifest_file  = "site.pp"
  end

end

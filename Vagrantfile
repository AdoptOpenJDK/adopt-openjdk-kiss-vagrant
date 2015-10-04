# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.hostname = "adoptopenjdk"

	config.vm.box = "ubuntu-#{ENV['VAGRANT_BOX_NAME_SUFFIX']}/precise-amd64"

	config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"

	config.vm.provision :shell, :inline => "sudo /vagrant/scripts/aptget-deps.sh"

	config.vm.provider :virtualbox do |vb|
		vb.gui = false
		vb.customize ["modifyvm", :id, "--cpus", "#{ENV['VAGRANT_BOX_CPUS']}"]
		vb.customize ["modifyvm", :id, "--memory", "#{ENV['VAGRANT_BOX_MEMORY']}"]
	end

end

# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	config.vm.hostname = "adoptopenjdk"

	config.vm.box = "ubuntu/utopic64"
	config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box"

	config.vm.provision :shell, :inline => "sudo /vagrant/scripts/aptget-deps.sh"

	config.vm.provider :virtualbox do |vb|
		vb.gui = false
		vb.customize ["modifyvm", :id, "--cpus", "1"]
		vb.customize ["modifyvm", :id, "--memory", "512"]
	end

end

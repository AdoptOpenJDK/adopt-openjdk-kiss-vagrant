. scripts/setupEnvForValhallaOpenJDK9.sh
VAGRANT_BOX_NAME_CPUS=2 VAGRANT_BOX_NAME_MEMORY=4096 vagrant up
vagrant ssh -c "sh /vagrant/scripts/buildValhallaOpenJDK9.sh"
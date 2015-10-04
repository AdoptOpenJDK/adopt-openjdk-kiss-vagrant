export VAGRANT_BOX_CPUS=2
export VAGRANT_BOX_MEMORY=4096

export VAGRANT_BOX_NAME_SUFFIX=openjdk9

. scripts/setupEnvForOpenJDK9.sh
vagrant up
vagrant ssh -c "sh /vagrant/scripts/buildOpenJDK9.sh"
vagrant ssh
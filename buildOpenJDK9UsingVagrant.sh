export VAGRANT_BOX_CPUS=2
export VAGRANT_BOX_MEMORY=4096

export VAGRANT_BOX_NAME_SUFFIX=openjdk9

vagrant up
vagrant ssh -c "sh /vagrant/scripts/buildOpenJDK.sh setupEnvForOpenJDK9.sh"
vagrant ssh
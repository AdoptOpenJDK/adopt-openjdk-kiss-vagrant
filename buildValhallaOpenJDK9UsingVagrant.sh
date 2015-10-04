export VAGRANT_BOX_CPUS=2
export VAGRANT_BOX_MEMORY=4096

export VAGRANT_BOX_NAME_SUFFIX=valhalla-openjdk9

. scripts/setupEnvForValhallaOpenJDK9.sh
vagrant up
vagrant ssh -c "sh /vagrant/scripts/buildValhallaOpenJDK9.sh"
vagrant ssh
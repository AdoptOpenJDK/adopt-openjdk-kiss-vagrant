#!/bin/sh

set -eu

# this will create a box from the vagrant/vm images that the vagrant file refers to
echo "==>Loading box ubuntu-12.04-openjdk9.box bundled with Vagrantfile from this folder<=="

echo "Halting current vagrant instance"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant halt

alreadyExists=$(echo `vagrant box list | grep "ubuntu-12.04-openjdk9"`)
echo $alreadyExists
if [ ! -z "$alreadyExists" ]; then
	echo "Remove the Box from the Vagrant Install"
	vagrant box remove ubuntu-12.04-openjdk9
fi
echo "Add the Box into Your Vagrant Install"
vagrant box add --force ubuntu-12.04-openjdk9 ubuntu-12.04-openjdk9.box

echo "Initializing the vagrant box: ubuntu-12.04-openjdk9"
mv Vagrantfile Vagrantfile.backup
rm -f Vagrantfile-from-box
vagrant init ubuntu-12.04-openjdk9 --output Vagrantfile-from-box
mv Vagrantfile.backup Vagrantfile

echo "The vagrant box ubuntu-12.04-openjdk9 has been added"
vagrant box list | grep "ubuntu-12.04-openjdk9"

echo "Running ubuntu-12.04-openjdk9"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant up 

echo "ssh into the box: ubuntu-12.04-openjdk9"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant ssh
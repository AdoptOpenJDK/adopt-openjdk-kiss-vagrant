#!/bin/sh

set -eu

export VAGRANT_BOX_NAME=ubuntu-12.04-openjdk9
export VAGRANT_BOX_FILENAME=ubuntu-12.04-openjdk9.box

# this will create a box from the vagrant/vm images that the vagrant file refers to
echo "==>Loading box $VAGRANT_BOX_FILENAME bundled with Vagrantfile from this folder<=="

echo "Halting current vagrant instance"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant halt

alreadyExists=$(echo `vagrant box list | grep "$VAGRANT_BOX_NAME"`)
echo $alreadyExists
if [ ! -z "$alreadyExists" ]; then
	echo "Remove the Box from the Vagrant Install"
	vagrant box remove $VAGRANT_BOX_NAME
fi
echo "Add the Box into Your Vagrant Install"
vagrant box add --force $VAGRANT_BOX_NAME $VAGRANT_BOX_FILENAME

echo "Initializing the vagrant box: $VAGRANT_BOX_NAME"
mv Vagrantfile Vagrantfile.backup
rm -f Vagrantfile-from-box
vagrant init $VAGRANT_BOX_NAME --output Vagrantfile-from-box
mv Vagrantfile.backup Vagrantfile

echo "The vagrant box $VAGRANT_BOX_NAME has been added"
vagrant box list | grep "$VAGRANT_BOX_NAME"

echo "Running $VAGRANT_BOX_NAME"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant up 

echo "ssh into the box: $VAGRANT_BOX_NAME"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant ssh

echo "***************************************************************************************"
echo "*                                                                                     *"
echo "* Run the shutdownBoxInThisFolder.sh script to shutdown the $VAGRANT_BOX_NAME box     *"
echo "*                                                                                     *"
echo "*                                                                                     *"
echo "* Run the sshIntoBoxInThisFolder.sh to ssh into the $VAGRANT_BOX_NAME box             *"
echo "*                                                                                     *"
echo "*                                                                                     *"
echo "***************************************************************************************"
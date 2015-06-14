#!/bin/sh

set -eu

export VAGRANT_BOX_NAME=ubuntu-12.04-openjdk9

# this will destory the box
echo "Destroying $VAGRANT_BOX_NAME from your Vagrant installation"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant destroy

echo "Removing $VAGRANT_BOX_NAME from your Vagrant installation"
vagrant box remove $VAGRANT_BOX_NAME

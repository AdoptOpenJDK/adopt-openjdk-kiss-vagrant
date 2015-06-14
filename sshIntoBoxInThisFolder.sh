#!/bin/sh

set -eu

export VAGRANT_BOX_NAME=ubuntu-12.04-openjdk9

echo "Running $VAGRANT_BOX_NAME"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant up 

echo "ssh-ing into the box: $VAGRANT_BOX_NAME"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant ssh
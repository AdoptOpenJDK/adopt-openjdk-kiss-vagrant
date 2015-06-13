#!/bin/sh

set -eu

echo "Running ubuntu-14.04-openjdk9"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant up 

echo "ssh into the box: ubuntu-14.04-openjdk9"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant ssh
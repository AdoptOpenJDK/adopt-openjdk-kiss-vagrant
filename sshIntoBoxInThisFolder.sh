#!/bin/sh

set -eu

echo "Running ubuntu-12.04-openjdk9"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant up 

echo "ssh into the box: ubuntu-12.04-openjdk9"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant ssh
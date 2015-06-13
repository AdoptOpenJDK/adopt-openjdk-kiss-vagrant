#!/bin/sh

set -eu

# this will create a box from the vagrant/vm images that the vagrant file refers to
echo "A file by the name ubuntu-14.04-openjdk9.box will be created bundled with Vagrantfile from this folder"
vagrant package --output ubuntu-14.04-openjdk9.box --vagrantfile Vagrantfile

#!/bin/sh

set -eu

echo "Shutting down ubuntu-14.04-openjdk9"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant halt

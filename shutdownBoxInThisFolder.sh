#!/bin/sh

set -eu

export VAGRANT_BOX_NAME=ubuntu-12.04-openjdk9

echo "Shutting down $VAGRANT_BOX_NAME"
VAGRANT_VAGRANTFILE=Vagrantfile-from-box vagrant halt

#!/bin/sh

set -eu

export VAGRANT_BOX_NAME=ubuntu-12.04-$VAGRANT_BOX_NAME_SUFFIX
export VAGRANT_BOX_FILENAME=ubuntu-12.04-$VAGRANT_BOX_NAME_SUFFIX.box

# this will create a box from the vagrant/vm images that the vagrant file refers to
echo "A file by the name $VAGRANT_BOX_FILENAME will be created bundled with Vagrantfile from this folder"
vagrant package --output $VAGRANT_BOX_FILENAME --vagrantfile Vagrantfile

echo "***************************************************************************************"
echo "*                                                                                     *"
echo "* Run the loadboxFromBoxInFolder.sh script to load the box you just created           *"
echo "*    i.e. $VAGRANT_BOX_FILENAME                                                       *"
echo "*                                                                                     *"
echo "*                                                                                     *"
echo "* Run the shutdownBoxInThisFolder.sh script to shutdown the '$VAGRANT_BOX_NAME' box   *"
echo "*                                                                                     *"
echo "*                                                                                     *"
echo "* Run the sshIntoBoxInThisFolder.sh to ssh into the '$VAGRANT_BOX_NAME' box           *"
echo "*                                                                                     *"
echo "*                                                                                     *"
echo "***************************************************************************************"
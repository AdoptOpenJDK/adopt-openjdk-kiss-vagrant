export VAGRANT_BOX_CPUS=2
export VAGRANT_BOX_MEMORY=4096
export VAGRANT_BOX_NAME_SUFFIX=openjdk9
export SETUP_SCRIPT_NAME=setupEnvForJigsawOpenJDK9.sh

echo "***************************************************************************************"
echo "*                                                                                     *"
echo "* Vagrant start the VM (if not active)                                                *"
echo "*                                                                                     *"
echo "***************************************************************************************"
vagrant up

echo "***************************************************************************************"
echo "*                                                                                     *"
echo "* Vagrant ssh-ing into the box, to execute OpenJDK commands...                        *"
echo "*                                                                                     *"
echo "***************************************************************************************"
vagrant ssh -c "sh /vagrant/scripts/buildOpenJDK.sh $SETUP_SCRIPT_NAME"

echo "***************************************************************************************"
echo "*                                                                                     *"
echo "* Vagrant ssh into the box, into command prompt                                       *"
echo "*                                                                                     *"
echo "***************************************************************************************"
vagrant ssh
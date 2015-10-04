echo "Creating folder sources if it does not exists"
mkdir -p /vagrant/sources

echo "Changing into folder sources"
cd /vagrant/sources

echo "Setting up environment variables for OpenJDK"
. ../scripts/setupEnvForOpenJDK9.sh

echo "Run script to update sources and share with host"
sh ../scripts/source-share-with-host.sh

echo "Changing into folder $JDK_FOLDER"
cd $JDK_FOLDER

echo "Run script to configure and build OpenJDK"
sh ../../scripts/configureAndBuildOpenJDKOnly.sh

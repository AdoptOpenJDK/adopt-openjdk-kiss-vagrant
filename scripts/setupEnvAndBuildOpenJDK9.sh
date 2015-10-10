export JDK_FOLDER=jdk9
export OPENJDK_REPO=http://hg.openjdk.java.net/jdk9/dev
### This is the JDK8 path inside the vagrant box
export JAVA8_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export BASH_CONFIGURE_PARAMS="--with-boot-jdk=$JAVA8_HOME --disable-warnings-as-errors"
export MAKE_PARAMS="images LOG=debug"

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
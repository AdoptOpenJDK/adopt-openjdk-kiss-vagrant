export JDK_FOLDER=valhalla
export OPENJDK_REPO=http://hg.openjdk.java.net/valhalla/valhalla
### This is the JDK8 path inside the vagrant box
export JAVA8_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export BASH_CONFIGURE_PARAMS="--with-boot-jdk=$JAVA8_HOME"
### jimages is a temporary parameter passed in till the OpenJDK team fixes the Valhalla build
export MAKE_PARAMS=jimages LOG=debug
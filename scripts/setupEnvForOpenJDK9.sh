export JDK_FOLDER=jdk9
export OPENJDK_REPO=http://hg.openjdk.java.net/jdk9/dev
### This is the JDK8 path inside the vagrant box
export JAVA8_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export BASH_CONFIGURE_PARAMS="--with-boot-jdk=$JAVA8_HOME --disable-warnings-as-errors"
export MAKE_PARAMS="images LOG=debug"

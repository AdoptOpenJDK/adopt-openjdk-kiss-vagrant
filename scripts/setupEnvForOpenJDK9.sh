export JDK_FOLDER=jdk9
export OPENJDK_REPO=http://hg.openjdk.java.net/jdk9/dev
export VAGRANT_BOX_NAME_SUFFIX=openjdk9
export BASH_CONFIGURE_PARAMS="--with-boot-jdk=$JAVA8_HOME --disable-warnings-as-errors"
export MAKE_PARAMS="images LOG=debug"

./get_source.sh
bash configure --with-boot-jdk=$JAVA8_HOME
make images
make test

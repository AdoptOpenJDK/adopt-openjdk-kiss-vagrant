./get_source.sh
bash configure --with-boot-jdk=$JAVA8_HOME
make clean images
make test

./get_source.sh
JAVA8_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
bash configure --with-boot-jdk=$JAVA8_HOME  --disable-warnings-as-errors
make clean images LOG=debug
make test

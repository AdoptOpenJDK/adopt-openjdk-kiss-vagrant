#!/bin/bash

VAGRANT_HOST_GUEST_SHARED_FOLDER=/vagrant
SOURCE_CODE=${VAGRANT_HOST_GUEST_SHARED_FOLDER}/sources ;
JDK_FOLDER=jdk9
mkdir -p ${SOURCE_CODE} ;
cd ${SOURCE_CODE} ;

# if jdk9 already exists don't clone
if [ ! -d ${SOURCE_CODE}/${JDK_FOLDER} ] ; then
	hg clone http://hg.openjdk.java.net/jdk9/dev ${JDK_FOLDER} ;
fi

# update and double check clone worked
cd ${SOURCE_CODE}/${JDK_FOLDER} ;
hg update ;

chmod u+x get_source.sh ;

./get_source.sh ;

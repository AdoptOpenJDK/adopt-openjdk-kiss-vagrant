#!/bin/bash

SOURCE_CODE=${HOME}/sources ;
JDK_FOLDER=jdk9
OPENJDK_REPO=http://hg.openjdk.java.net/jdk9/dev

mkdir -p ${SOURCE_CODE} ;
cd ${SOURCE_CODE} ;

# if jdk9 already exists don't clone
if [ ! -d ${SOURCE_CODE}/${JDK_FOLDER} ] ; then
	hg clone ${OPENJDK_REPO} ${JDK_FOLDER} ;
fi

# update and double check clone worked
cd ${SOURCE_CODE}/${JDK_FOLDER} ;
hg update ;

chmod u+x get_source.sh ;

./get_source.sh ;

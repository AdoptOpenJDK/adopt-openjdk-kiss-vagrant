#!/bin/bash

set -eu

export SOURCE_CODE=$1/sources ;
JDK_FOLDER=jdk9
OPENJDK_REPO=http://hg.openjdk.java.net/jdk9/dev
SCRIPTS_FOLDER=../../scripts/

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

cp -f ${SCRIPTS_FOLDER}/update*.sh ${SOURCE_CODE}/${JDK_FOLDER}
cp -f ${SCRIPTS_FOLDER}/configure*.sh ${SOURCE_CODE}/${JDK_FOLDER}

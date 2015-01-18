#!/bin/bash

SOURCE_CODE=${HOME}/sources ;
mkdir -p ${SOURCE_CODE} ;
cd ${SOURCE_CODE} ;

# if jdk9 already exists don't clone
if [ ! -d ${SOURCE_CODE}/jdk9 ] ; then
	hg clone http://hg.openjdk.java.net/jdk9/dev jdk9 ;
fi

# update and double check clone worked
cd ${SOURCE_CODE}/jdk9 ;
hg update ;

bash get_source.sh ;

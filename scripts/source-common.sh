#!/bin/bash

set -eu

export SOURCE_CODE=$1/sources ;
SCRIPTS_FOLDER=../../scripts/

echo "Creating folder ${SOURCE_CODE}"
mkdir -p ${SOURCE_CODE} ;
cd ${SOURCE_CODE} ;

# if jdk9 already exists don't clone
if [ ! -d ${SOURCE_CODE}/${JDK_FOLDER} ] ; then
	echo "Cloning repo ${OPENJDK_REPO} in the ${JDK_FOLDER} folder"
	hg clone ${OPENJDK_REPO} ${JDK_FOLDER} ;
fi

# update and double check clone worked
echo "Switching to the ${OPENJDK_REPO} in the ${JDK_FOLDER} folder"
cd ${SOURCE_CODE}/${JDK_FOLDER} ;
hg update ;

chmod u+x get_source.sh ;

echo "Updating sources for ${JDK_FOLDER} via the get_source.sh script"
./get_source.sh ;

echo "Copying scripts into the ${SOURCE_CODE}/${JDK_FOLDER} folder"
cp -f ${SCRIPTS_FOLDER}/update*.sh ${SOURCE_CODE}/${JDK_FOLDER}
cp -f ${SCRIPTS_FOLDER}/configure*.sh ${SOURCE_CODE}/${JDK_FOLDER}
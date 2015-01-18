#!/bin/bash

JTREG_INSTALL=${HOME}/jtreg ;
mkdir -p ${JTREG_INSTALL} ;
cd ${JTREG_INSTALL} ;

export SOURCE_CODE=$HOME/sources
#export JTREG_INSTALL=<location of where JTREG has been installed> 
export JT_HOME=${JTREG_INSTALL}
export JTREG_HOME=${JTREG_INSTALL}
export PRODUCT_HOME=${SOURCE_CODE}/jdk9/build/linux-x64-normal-server-release/images/jdk ;
export JPRT_JTREG_HOME=${JT_HOME} ;
export JPRT_JAVA_HOME=${PRODUCT_HOME} ;
export JTREG_TIMEOUT_FACTOR=5 ;
export CONCURRENCY=4 ;

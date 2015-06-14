#!/bin/bash

DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing update ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing upgrade ;

DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install build-essential ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install ccache ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install g++-4.7-multilib ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install libasound2-dev ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install libcups2-dev ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install libffi-dev ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install libfreetype6-dev ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install libX11-dev ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install libxext-dev ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install libxrender-dev ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install libxt-dev ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install libxtst-dev ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install unzip ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install zip ;

DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install git-core ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install mercurial ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install tree ;

DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:openjdk-r/ppa -y
DEBIAN_FRONTEND=noninteractive apt-get update -y
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install openjdk-8-jdk ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install language-pack-en ;

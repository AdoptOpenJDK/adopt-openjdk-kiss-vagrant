#!/bin/bash

set -eu

# hg clone date time sync issue on 1st build so ensure ntp running and also force correct current time
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install ntp ;
DEBIAN_FRONTEND=noninteractive apt-get --yes --fix-missing install ntpdate ;
DEBIAN_FRONTEND=noninteractive service ntp stop ;
DEBIAN_FRONTEND=noninteractive ntpdate -s ntp.ubuntu.com pool.ntp.org ;
DEBIAN_FRONTEND=noninteractive service ntp start ;

#!/bin/bash

set -eu

tar cvfz openjdk-vagrant-box.tar.gz *.sh  scripts/ Vagrantfile \
			LICENSE README.md ubuntu-12.04-openjdk9.box 
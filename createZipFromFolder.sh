#!/bin/bash

set -eu

cd ..

tar cvfz openjdk-vagrant-box.tar.gz adopt-openjdk-kiss-vagrant/ --exclude="*Vagrant-*" --exclude="*sources*" --exclude="*.git*"
mv openjdk-vagrant-box.tar.gz adopt-openjdk-kiss-vagrant/

cd adopt-openjdk-kiss-vagrant/
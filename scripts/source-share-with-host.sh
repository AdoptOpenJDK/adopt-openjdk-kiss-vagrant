#!/bin/bash

set -eu

VAGRANT_HOST_GUEST_SHARED_FOLDER=/vagrant
BASEDIR=$(dirname $0)

sh $BASEDIR/source-common.sh $VAGRANT_HOST_GUEST_SHARED_FOLDER
#!/bin/bash

THIS_DIR=$(cd $(dirname ${0}); pwd)

. ${THIS_DIR}/env.sh

cd ${ATHRILL_HOME}/trunk/src/build/target/linux_v850e2m
make clean;make

if [ -f ${ATHRILL_HOME}/bin/linux/athrill2 ]
then
	exit 0
else
	exit 1
fi

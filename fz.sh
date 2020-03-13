#!/bin/bash

# If you don't have `realpath` command on your MacOS, 
# run `brew install coreutils` first.

CPATH=`pwd -P`
ABSOLUTE=

case $1 in
	/*) ABSOLUTE=$1;;
	*) ABSOLUTE=${CPATH}/$1;;
esac

for f in `ls ${ABSOLUTE}`
do
	if [ -d "${ABSOLUTE}/${f}" ]; then
		du -cksh `realpath ${ABSOLUTE}/$f` 2>/dev/null | head -n 1
	fi
done

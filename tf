#!/bin/bash

which git
if [ $? != 0 ]
then
	echo "Git isn't installed"
	exit 1
fi

which code
if [ $? != 0 ]
then
        echo "vscode isn't installed"
        exit 1
fi


for DIR in $(ls ./config)
do
	pushd ./config/$DIR
	./tf	
	popd
done

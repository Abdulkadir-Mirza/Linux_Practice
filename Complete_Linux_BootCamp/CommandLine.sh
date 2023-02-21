#!/bin/bash

if [ $# -eq 1 ]; then
	if [ -e $1 ]; then
		echo "$1 exists"
	else
		echo "$1 does not exists"
	fi
else
	echo "Provide only 1 argument in commandline"
	echo "Usage : fe filename - report the existence of a file"
fi	

#!/bin/bash

if [ $# -eq 1 ]; then
	counter=1

	echo "For Loop:"
	for i in $(seq 1 $1); do
		echo $i
	done

	echo "While Loop:"
	while [ $counter -le $1 ]; do
		echo $counter
		counter=$(($counter+1))
	done

	counter=1
	echo "Until Loop"
	until [ $counter -gt $1 ]; do
		echo $counter
		counter=$(($counter+1))
	done
fi

#!/bin/bash

divisible()
{

	local num=$1
	echo "Function got $num as input"

	for i in {2,3,5}
	do
		if [ $(( $num%$i )) -eq 0 ]; then
			echo "$num is dvisible by $i"
		fi
	done

}

divisible 30

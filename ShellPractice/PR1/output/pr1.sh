#!/bin/bash

mkdir output

for file in *;
do
       if [ -f "$file" ]; then	
		#echo "$file"
		check=$(grep -ni "sports" "$file")
		if [ -z "$check" ]; then
			echo "EMPTY"
		else
			echo "HOT FILE!!! FOUND"
			cp "$file" ./output
			echo "    " >> output/"$file"
			echo "***********" >> output/"$file"
			echo "$check" >> output/"$file"
		fi
	else
		echo "$file is not a file"
       fi
       echo "------------------------------------"
done
    
***********
9:		check=$(grep -ni "sports" "$file")

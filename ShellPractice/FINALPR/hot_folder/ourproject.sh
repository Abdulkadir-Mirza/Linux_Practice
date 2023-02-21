#!/bin/bash

mkdir ./hot_folder

for i in $(find . -type d);
do
if [ "$i" != "./hot_folder" ]; then
	echo "*******************Folder: $i************************"
	for file in $i/*;
	do
		if [ -f "$file" ] ; then
		echo "The file inside the folder $i is "$file""
		check=$(grep -ni "sports" "$file")
		        if [ -z "$check" ]; then
		                echo "EMPTY"
		        else
		                echo "HOT FILE!!! FOUND"
		                name_f=$(basename "$file")
		                cp "$file" ./hot_folder/"$name_f"
		                echo "    " >> hot_folder/"$name_f"
		                echo "***********" >> hot_folder/"$name_f"
		                echo "$check" >> hot_folder/"$file"
		        fi

		fi
	done
	echo "------------------------------"
fi
done
    
***********
13:		check=$(grep -ni "sports" "$file")

#!/bin/bash
ch=$(find ./ -type d| grep hot_folder)
if [ $ch ]; then
	rm -rf hot_folder/
fi
mkdir ./hot_folder

get_file()
{
	local str="$1"
	local fil="$2"
	
	check=$(grep -ni "$str" "$fil")
        if [ -z "$check" ]; then
                echo "EMPTY"
        else
                echo "HOT FILE!!! FOUND"
                local name_f=$(basename "$fil")
                cp "$fil" ./hot_folder/"$name_f"
                echo "    " >> hot_folder/"$name_f"
                echo "***********" >> hot_folder/"$name_f"
                echo "$check" >> hot_folder/"$name_f"
        fi

}

#############################################

for i in $(find . -type d);
do
if [ "$i" != "./hot_folder" ]; then
	echo "*******************Folder: $i************************"
	for file in $i/*;
	do
		if [ -f "$file" ] ; then
		echo "The file inside the folder $i is "$file""
		get_file "sport" "$file"
		fi
	done
	echo "------------------------------"
fi
done
    
***********
37:		get_file "sport" "$file"

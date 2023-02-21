#!/bin/bash

for i in {1..4}
do
	touch "${i}file.txt"
done

for i in {1..3}
do
	touch "myfiles${i}.jpg"
done

echo "Creating files"
sleep 1
ls -l

##########################################################################

choice=""
while [ "$choice" != "j" -a "$choice" != "t" ];
do
	echo "To rename all jpg file enter j, to rename all txt files enter t"
	read choice
	echo "You typed $choice"
done

read -p "Enter the prefix you want to add: " pref
echo "Prefix is $pref"

if [ $choice == "t" ]; then
	for element in *.txt
	do
		#echo " txt file is ${element}"
		mv ${element} ${pref}${element}
	done
elif [ $choice == "j" ]; then
	for element in *.jpg
        do
                #echo " jpg file is ${element}"
                mv ${element} ${pref}${element}
        done
fi
ls -l


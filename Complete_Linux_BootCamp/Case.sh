#!/bin/bash

echo "MENU/OPTIONS"
echo "1.Change to Dir one"
echo "2.Change to Dir two"
echo "3.Change to Dir three"
echo "Q.Quit"
read -p "Enter Your Choice: " ch

bashdir="$pwd"
case $ch in
	1) cd ${bashdir}one/
		;;
	2) cd ${bashdir}two/
		;;
	3) cd ${bashdir}three/
		;;
	[Qq]) ;;
	*) echo "Incorrect Choice"
	       ;;
esac	       

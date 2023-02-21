#!/bin/bash

touch 1.txt 2.txt
pwd > 1.txt
read -p "What prefix You want to give to your txt file: " myprefix

mv 1.txt ${myprefix}1.txt

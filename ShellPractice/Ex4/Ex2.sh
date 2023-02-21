#!/bin/bash

count=0
for i in ./*.txt
do
	count=$(( $count+1 ))
done

echo "Found $count .txt files"

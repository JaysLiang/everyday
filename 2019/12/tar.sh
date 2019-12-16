#!/bin/bash

files=`ls $PWD`

for i in $files 
do
	if [[ -d $i ]]; then
		echo $i is dir
		tar -czvf $i.tar.gz $i
	else 
		echo $i is not dir
	fi
done

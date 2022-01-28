#!/bin/bash -x

for file in $(ls *.txt)
do
	echo $file
	folder_name=`echo $file | awk -F. '{print $1}'`
	echo $folder_name
	if [ "$folder_name" ]
	then
		rm -r $folder_name
	fi
	mkdir $folder_name
	cp $file $folder_name
done

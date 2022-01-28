#!/bin/bash -x

read -p "Enter the file name to be craedted" file

if [ -f "$file" ]
then
	echo "file exists"
else
	echo "file doesnot exists"
	touch $file
	echo "file $file created"
fi

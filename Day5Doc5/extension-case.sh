#!/bin/bash -x


for file in $(ls)
do
	file_ext=`echo $file | awk -F. '{print $2}'`
	echo $file_ext


	case $file_ext in

		sh)
			echo shell script file
			;;
		pdf)
			echo pdf file
			;;
		py)
			echo python file
			;;
		cpp)
			echo cpp file
			;;
		txt)
			echo text file
			;;
		zip)
			echo zip file
			;;
		*)
			echo invalid file
			;;
	esac
done

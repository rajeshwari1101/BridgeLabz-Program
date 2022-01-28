#!/bin/bash -x

#month=$(((RANDOM%12)+1))
#day=$(((RANDOM%31)+1))
march=3
june=6

read -p "Enter the month starting from 1 to 12 :" month
read -p "Enter the day staring from 1 to 31 :" day

if (((($month>=$march && $day>=20) && ($month<=$june && $day<=20) )))
then
	echo $month and $day comes between march20 to jun20
	echo true
else
	echo false
fi

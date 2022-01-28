#!/bin/bash -x

#4. Write a program that takes User Inputs and does Unit Conversion of

#different Length units
#1. Feet to Inch 3. Inch to Feet
#2. Feet to Meter 4. Meter to Feet

read -p "Enter the number for conversion 1)feet to inch  2)feet to meter 3)inch to feet 4)meter to feet "  num


case $num in 

	1)
	read -p "Enter the value to be converted from feet to inch:" feet
		 feet_to_inch=$(($feet*12))
		 echo $feet feet is $feet_to_inch inches
		 ;;
			
	2)
	read -p "Enter the value to be converted from feet to meter:" feet
		 feet_to_meter=`awk "BEGIN {print $feet * 0.3048}"`
		 echo $feet feet is $feet_to_meter meters
		 ;;

	3)
	read -p "Enter the value to be converted from inch to feet:" inch
		 inch_to_feet=`awk "BEGIN {print $inch * 0.083333}"`
		 echo $inch inch is $inch_to_feet feet
		 ;;

	4)
	read -p "Enter the value to be converted from meter to feet:" meter
		 meter_to_feet=`awk "BEGIN {print $meter*3.28084}"`
		 echo $meter is $meter_to_feet feet
		 ;;

	*)
		echo "select correct option"
		;;

esac

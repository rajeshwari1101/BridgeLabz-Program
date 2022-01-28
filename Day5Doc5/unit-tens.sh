#!/bin/bash -x

read -p "Enter the number from unit to 10000 :" num

case $num in 
	1)
		echo unit;;
	10)
		echo tens;;
	100)
		echo hundreds;;
	1000)
	echo thousands;;
	10000)
	echo ten of thousands;;
	100000)
	echo hundred of thousands;;
	1000000)
	echo millions;;
	1000000000)
	echo billions;;
	*)
	echo Enter correct format

esac

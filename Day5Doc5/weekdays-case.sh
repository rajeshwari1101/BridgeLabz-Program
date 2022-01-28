#!/bin/bash -x

number=$((RANDOM%7))

case $number in

	1)
	echo monday;;
	2)
	echo tuesday;;
	3)
	echo wednesday;;
	4)
	echo thrusday;;
	5)
	echo friday;;
	6)
	echo saturday;;
	0)
	echo sunday;;
esac

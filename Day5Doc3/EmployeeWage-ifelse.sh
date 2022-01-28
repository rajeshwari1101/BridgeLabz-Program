#!/bin/bash -x

ispresent=1;
emprateperhr=20;
empcheck=$((RANDOM%2));
null=0;

if [ $empcheck -eq $ispresent ]
	then
	wrkhrs=8;
	salary=$((emprateperhr * wrkhrs));
else
	echo employee is absent
	salary=$null;

fi

#!/bin/bash -x

isfulltime=1;
isparttime=2;
emprateperhrs=20;

empcheck=$((RANDOM%3))
# 0 is for absent
# 1 is for fulltime
# 2 is for parttime
if (($empcheck == $isfulltime))
		  then
		  empwrkhrs=8;
elif (($empcheck == $isparttime))
		  then
		  empwrkhrs=4
		  else
		  empwrkhrs=0
		  fi
		  salary=$(($emprateperhrs * $empwrkhrs));

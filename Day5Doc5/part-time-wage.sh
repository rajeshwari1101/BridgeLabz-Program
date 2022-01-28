#!/bin/bash -x

isfulltime=1;
isparttime=2;
emprateperhrs=20;

empcheck=$((RANDOM%3))
# 0 is for absent
# 1 is for fulltime
# 2 is for parttime
case $empcheck in
		  $isfulltime)
		  empwrkhrs=8;;
		  $isparttime)
		  empwrkhrs=4;;
		  *)#* is for default
		  empwrkhrs=0;;
		  esac

		  salary=$(($emprateperhrs * $empwrkhrs));

#!/bin/bash -x

read -p "Enter the year in 4 digit format :" year

if ((($year%4==0) && ($year%100!=0) || ($year%400==0)))

		  then
		  echo $year is a leap year
		  else
		  echo $year is not a leap year
		  fi

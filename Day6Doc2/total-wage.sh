#!/bin/bash -x

#constants for the program
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;


#VARIABLES
totalEmphr=0;
totalWorkingDays=0;


while (($totalEmphr<$MAX_HRS_IN_MONTH && $totalWorkingDays<$NUM_WORKING_DAYS))
do
	((totalWorkingDays++))
	empcheck=$((RANDOM%3))
	case $empcheck in
		$IS_FULL_TIME)
			empHrs=8;
			;;
		$IS_PART_TIME)
			empHrs=4;
			;;
					*)
			empHrs=0;
			;;
	esac
	
	totalEmphr=$(($totalEmphr+$empHrs))
done

totalSalary=$((totalEmphr*EMP_RATE_PER_HR));	

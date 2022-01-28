#!/bin/bash -x

IS_FULL_TIME=1
IS_PART_TIME=2	
NUM_OF_DAYS_MONTH=20
EMP_RATE_PER_HR=20


Days=0
totalWorikingHrs=0
declare -A salary

emphrs()
{
	empCheck=$1
	case $empCheck in
	
	$IS_FULL_TIME)
		empWrkHrs=8
		;;
	$IS_PART_TIME)
		empWrkHrs=4
		;;
	*)
		empWrkHrs=0
		;;
	esac
		echo $empWrkHrs
}

for (( ;$Days < $NUM_OF_DAYS_MONTH; ))
do
	((Days++))
	empCheck=$((RANDOM%3))
	
	totalWorikingHrs=$(($totalWorikingHrs+$(emphrs $empCheck)))
	salary[Day$Days]=$(($(emphrs $empCheck)*$EMP_RATE_PER_HR))
	
		
done
totalsalary=$(($totalWorikingHrs*$EMP_RATE_PER_HR))
echo ${!salary[@]}
echo ${salary[@]}

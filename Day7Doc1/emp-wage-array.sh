#!/bin/bash -x
#CONSTANT VARIABLES
IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
NUM_WORKING_DAYS=20


#VARIABLES
totalWorkingHrs=0
totalWorkingDays=0

getEmpHrs(){
	local empCheck=$1
	case $empCheck in
		$IS_PART_TIME)
			empHrs=4;
			;;
		$IS_FULL_TIME)
			empHrs=8
			;;
		*)
			empHrs=0
	esac
	echo $empHrs
}

while ((totalWorkingDays<NUM_WORKING_DAYS))
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	
		empHrs=$(getEmpHrs $empCheck)
		totalWorkingHrs=$(($totalWorkingHrs+empHrs))
		salary_day=$(($empHrs*$EMP_RATE_PER_HR))
		salary[(($totalWorkingDays))]=$salary_day
done

totalSalary=$(($totalWorkingHrs*$EMP_RATE_PER_HR))
echo " ${salary[@]} "
printf "\n"

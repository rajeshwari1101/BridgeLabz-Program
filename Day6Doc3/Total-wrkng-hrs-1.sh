#! /bin/bash -x

<<cmt
Calculating Wages till Number of Working Days or
Total Working Hours per month is Reached
cmt

IS_PART_TIME=1
IS_FULL_TIME=2
NO_OF_WORKING_DAYS=20;
EMP_RATE_PER_HR=20;

totalworkingdays=0;
totalWorkingHrs=0;

function getworkinghrs(){
	case $1 in
		$IS_FULL_TIME)
			empHrs=8
			;;
			
		$IS_PART_TIME)
			empHrs=4
			;;
			
		*)
			empHrs=0
			;;
	esac
	
	echo $empHrs
}
while (($totalworkingdays<$NO_OF_WORKING_DAYS))
do
	((totalworkingdays++))
	
	totalWorkingHrs=$(($totalWorkingHrs+$(getworkinghrs $((RANDOM%3)))))
	
	echo $totalWorkingHrs
done
totalsalary=$(($EMP_RATE_PER_HR*$totalWorkingHrs))
echo $totalsalary

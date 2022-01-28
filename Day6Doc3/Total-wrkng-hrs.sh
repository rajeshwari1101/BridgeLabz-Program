#! /bin/bash -x
<<cmt
Calculating Wages till Number of Working Days or
Total Working Hours per month is Reached
cmt
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HR=20
NUM_OF_WRKNG_DAYS=20

empHrs=0;
totalWrkngdays=0

 function getwrkinghrs() {
	case $1 in
		$IS_FULL_TIME)
			empHrs=8
			;;
		
		$IS_PART_TIME)
			empHrs=4
			;;
			
				   *)
			empHrs=0;
	esac
	
	echo $empHrs

 }
 
 while (($totalWrkngdays<$NUM_OF_WRKNG_DAYS))
 do
 ((totalWrkngdays++))
 #working_hrs=$( getwrkinghrs $((RANDOM%3)))
 #echo $working_hrs
 totalWorkingHrs=$(($totalWorkingHrs+$( getwrkinghrs $((RANDOM%3)))))
 done
 
 totalsalary=$(($totalWorkingHrs*$EMP_RATE_PER_HR))

#! /bin/bash -x

isparttime=1;
isfulltime=2;
totalsalary=0;
emprateperhr=20;
numworkingdays=20;

for ((day=1;day<=$numworkingdays;day++))
do
	empcheck=$((RANDOM%3))
	case $empcheck in
		
		$isfulltime)
			empwrkhrs=8
			;;
		$isparttime)
			empwrkhrs=4
			;;
		*)
			empwrkhrs=0
			;;
	esac
	salary=$(($empwrkhrs*$emprateperhr))
	totalsalary=$(($totalsalary+$salary))
done

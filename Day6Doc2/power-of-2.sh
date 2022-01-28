#! /bin/bash -x

powerof_2=1;
while [ $powerof_2 -le 256 ]
do	
	echo $powerof_2
	powerof_2=$(($powerof_2*2))

done

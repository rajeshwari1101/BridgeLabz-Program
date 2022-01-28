#!/bin/bash -x

<<cmt
6. Write a program to compute Factors of a number N using prime factorization method.
Logic -> Traverse till i*i <= N instead of i <= N for efficiency.
O/P -> Print the prime factors of number N.
cmt

read -p "Enter the number n :" n


for ((i=2;$n!=1;i++))
do
	if (($n%i==0))
	then
	while (($n%i==0))
	#for ((;$n%i==0;))
		do
			printf "$i "
			n=$(($n/i))

		done
	fi


done

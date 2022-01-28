#!/bin/bash -x
<< cmt
3. Write a program that takes a input and determines if the number is a prime.
cmt


read -p "Enter the number to check its is prime or not :" num

for ((i=2;i<num;i++))
do
	if (($num%i==0))
	then
	break;
	fi
done

if (($num==$i))
then
	echo "$num is prime"
else
	echo "$num is not a prime"
fi

#!/bin/bash -x
<<cmt
1. Write a program that does the following
a. Generates 10 Random 3 Digit number.
b. Store this random numbers into a array.
c. Then find the 2nd largest and the 2nd smallest element without sorting the array.
cmt

for ((index=0;index<10;index++))
do
array[((index))]=$(((RANDOM%900)+100))
done

__2ndlarge=$(_2nd_largest ${array[@]})

echo ${array[@]}

large=${array[0]}
_2ndlarge=${array[1]}
small=${array[0]}
_2ndsmall=${array[1]}

if ((large<_2ndlarge))
then
	temp=$large
	large=$_2ndlarge
	_2ndlarge=$temp
fi
if ((small>_2ndsmall))
then
	temp=$small
	large=$_2ndsmall
	_2ndsmall=$temp
fi


for ((i=2;i<${#array[@]};i++))
do
	if ((${array[$i]}>$large))
	then
		_2ndlarge=$large
		large=${array[$i]}
	elif ((${array[$i]}>$_2ndlarge && ${array[$i]}<$large))
	then
		_2ndlarge=${array[$i]}
	fi
	
	if ((${array[$i]}<$small))
	then
		_2ndsmall=$small
		small=${array[$i]}
	elif ((${array[$i]}<$_2ndsmall && ${array[$i]}>$small))
	then
		_2ndsmall=${array[$i]}
	fi
done

echo "the largest and second largest number in a given array ${array[@]} are "
echo largest=$large
echo _2nd_largest=$_2ndlarge
echo "the small and second smallest number in a given array ${array[@]} are "
echo smallest=$small
echo _2nd_smallest=$_2ndsmall

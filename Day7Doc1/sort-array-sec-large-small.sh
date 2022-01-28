#!/bin/bash -x

<<cmt
2. Extend the above program to sort the array and then find the 2nd largest
and the 2nd smallest element.
cmt

for ((i=0;i<10;i++))
do
	array[$i]=$(((RANDOM%900)+100))

done
echo ${array[@]}

##sorting of array

large=${array[0]}

for ((i=0;i<${#array[@]};i++))
do
	for ((j=i+1;j<${#array[@]};j++))
	do
		if ((${array[$i]}>${array[$j]}))
		then
			temp=${array[$i]}
			array[$i]=${array[$j]}
			array[$j]=$temp
		fi
	done
done

echo ${array[@]}
echo second largest is ${array[8]}
echo second smallest is ${array[1]}

#!/bin/bash -x

<< c
4. Write a program that reads 5 Random 2 Digit values , then find their
sum and the average
c

echo hai
declare -a array
for((i=0;$i<=4;i++))
do
	array[$i]=$(((RANDOM%90)+10))
done
sum=0
for((i=0;$i<=4;i++))
do
	sum=$(($sum+${array[$i]}))
done
echo $i
avg=$(($sum/$i))
echo $sum
echo $avg

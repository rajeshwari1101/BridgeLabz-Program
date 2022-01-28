#!/bin/bash -x

for ((i=0,sum=0;i<2;i++))
do
	arr[$i]=$((RANDOM%6 +1))
	sum=$(($sum+${arr[$i]}))
done

echo ${arr[@]}

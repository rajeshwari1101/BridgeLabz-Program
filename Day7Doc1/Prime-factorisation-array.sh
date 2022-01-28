#!/bin/bash -x
declare -a arr
read -p "Enter the number : " n
index=0
for ((i=2;n!=1;i++))
do
	while ((n%i==0))
	do
		printf "$i "
		arr[((index++))]=$i
		n=$(($n/$i))
	done
done
printf "\n"
echo "array index is ${!arr[@]}"
echo "array is       ${arr[@]}"

#!/bin/bash -x


read -p "Enter the number :"n
sum=0
temp=$n;
while ((n>0))
do
	r=$((n%10))
	sum=$(($sum+$r))
	n=$(($n/10))
done

if (($n==$temp))
then
	echo "$temp is a palindrome number"
else
	echo "$temp is not a palindrome number"
fi

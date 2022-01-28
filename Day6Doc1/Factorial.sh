#!/bin/bash -x
<< cmt
5. Write a program that computes a factorial of a number taken as input.
5 Factorial – 5! = 1 * 2 * 3 * 4 * 5
cmt


read -p "Enter the number to check factorial of that :" num
fact=1
for ((i=1;i<=num;i++))
do
	fact=$(($fact*$i))
done

echo $fact

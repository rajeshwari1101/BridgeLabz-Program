#!/bin/bash -x


num1=$((RANDOM));
num2=$((RANDOM));

if [ $num1 -ge $num2 ]
then
echo $num1 is greater than or equal to $num2
else
echo $num1 is less than $num2
fi

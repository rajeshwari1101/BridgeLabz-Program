#!/bin/bash -x

sum=0
for i in {1..5}
do
echo $i "iteration"
sum=$((($sum+(RANDOM%90)+10)))

done
echo $sum
avg=$(($sum/5));

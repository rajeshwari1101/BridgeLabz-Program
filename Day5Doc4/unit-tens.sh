#!/bin/bash -x

read -p "Enter the number in unit to 10000" num

if [ $num -eq 1 ]
then
echo unit
elif [ $num -eq 10 ]
then
echo tens
elif [ $num -eq 100 ] 
then
echo hundered
elif [ $num -eq 1000 ]
then
echo thousand
elif [ $num -eq 10000 ]
then
echo tenthousand
else
echo enter required number
fi

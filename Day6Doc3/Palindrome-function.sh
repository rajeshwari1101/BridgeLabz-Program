#!/bin/bash -x

#read -p "Enter the number to check if it is a palindrome or nor :" num
num=$@


palindrome() {
sum=0
temp=$num

for (( num;num!=0;num=num/10 ))
do
		  r=$((num%10))
		  sum=$(($sum*10+$r))
done

echo $sum
}

rev=$(palindrome $num)
#echo $rev
#echo $num

if (( rev == num))
then
		  echo "given number is a palindrome"
else
		  echo "given number is not a palindrome"
fi

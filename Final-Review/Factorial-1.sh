#!/bin/bash -x

<<cmt Write a program that computes a factorial of a number taken as input.

5 Factorial – 5! = 1 * 2 * 3 * 4 * 5
cmt


echo "Enter a number to check factorial of that :"

read num
fact=1

for((i=1;i<=num;i++))
{
  printf "$i *"
  fact=$((fact * i)) 
}


echo $fact


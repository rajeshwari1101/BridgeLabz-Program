#!/bin/bash -x
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

palindrome(){
	if (( $num1==$num2 ))
	then
			  echo palindrome
	else
			  echo not palindrome
	fi


}

palindrome $num1 $num2

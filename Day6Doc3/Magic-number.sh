#!/bin/bash -x
guess=-1
num=0
echo "Guess the number between 1 to 100"

(( answer = RANDOM % 100 + 1 ))
echo $answer


while (( guess != answer ))
do
	num=$((num+1))
	read -p "Enter the Guess num :" guess
	if ((guess>answer/2))
	then
		echo higher
	elif ((guess<answer/2))
	then
		echo lower
	fi
done

echo guess is right after $num times guessess
echo $answer
echo $guess

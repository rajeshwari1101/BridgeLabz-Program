#!/bin/bash -x

#3. Add two Random Dice Number and Print the Result

dice1=$(((RANDOM%6)+1))
dice2=$(((RANDOM%6)+1))

sum=$(($dice1+$dice2))

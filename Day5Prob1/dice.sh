#!/bin/bash -x

#2. Use Random to get Dice Number between 1 to 6

dice=$((RANDOM%7))

if (($dice==0))
then
	dice=1;
fi

#!/bin/bash -x

a=$((RANDOM%900 +100))
b=$((RANDOM%900 +100))

if ((a>b))
then
	echo a is greater
else
	echo b is greater
fi

#!/bin/bash -x

isPresent=1

empCheck=$((RANDOM%2))

if (($empCheck==$isPresent))
then
	echo emp is present
else
	echo emp is absent
fi

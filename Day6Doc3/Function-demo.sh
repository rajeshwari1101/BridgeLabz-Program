#!/bin/bash -x

function myfunction()
{
	echo $1
}

result="$(myfunction $((RANDOM%2)))"

if (($result==1))
then
	echo "success"
else
	echo "failure"
fi

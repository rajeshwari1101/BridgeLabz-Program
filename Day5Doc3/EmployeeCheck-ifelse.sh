#!/bin/bash -x

ispresent=1;

employee_check=$((RANDOM%2));

if [ $employee_check -eq $ispresent ]
	then
			echo employee is present
else
			echo employee is absent
fi

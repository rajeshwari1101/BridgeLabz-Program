#!/bin/bash -x

read -p "enter the value to be converted:" value


degreeF()
{
	degC=$1
	degF=$((($degC*9/5)+32))
	echo $degF

}


degreeC()
{
	degF=$1
	degC=$((($degF-32)*5/9))
	echo $degC

}

read -p "Enter the function to be executed 1 for degF and 2 for degC :" func

case $func in
	1)
		echo degC is $value
		degF=$(degreeF $value)
			;;
	2)
		echo degF is $value
		degC=$(degreeC $value)
			;;
	*)
		echo invalid value
			;;
esac

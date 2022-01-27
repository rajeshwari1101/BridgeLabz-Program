#!/bin/bash -x

read -p "enter the value of x:" x;
read -p "enter the value of Y:" y;

z=$(($x+$y));

echo $z

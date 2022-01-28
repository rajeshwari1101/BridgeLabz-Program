#!/bin/bash -x

counter=0

fruits[((counter++))]="apple"
fruits[((counter++))]="banana"
fruits[((counter++))]="pineapple"
fruits[((counter++))]="greenapple"

echo ${fruits[0]}   ##Element #0
echo ${fruits[@]}   ##All elements , space seperated
echo ${!fruits[@]}  ##prints indexes
echo ${#fruits[@]}  ##number of elements
echo ${#fruits}     ##string length of the first element
echo ${#fruits[3]}     ##string length of the nth element
echo ${fruits[@]:3:2}  ##range (from  position 3 ,length 2)

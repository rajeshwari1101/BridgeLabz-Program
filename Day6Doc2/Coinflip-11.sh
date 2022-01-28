#!/bin/bash -x
head=1
tail=0
head_count=0
tail_count=0
coinflip_count=0
((coinflip = RANDOM % 2))
echo $coinflip
##flip for 11 times
while ((coinflip_count<11))
do
((coinflip = RANDOM % 2))
((coinflip_count++))

if ((coinflip==head))
then
((	head_count++ ))
elif ((coinflip==tail))
then
	(( tail_count++ ))
fi
done

if ((head_count>tail_count))
then
	echo head is the winner with $head_count count times
else
	echo tail is the winner with $tail_count count times
fi

echo " headcount=$head_count "
echo " tailcount=$tail_count "

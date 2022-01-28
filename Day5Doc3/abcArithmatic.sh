#!/bin/bash -x


a=$(((RANDOM%100)+1))
b=$(((RANDOM%100)+1))
c=$(((RANDOM%100)+1))
d=$(((RANDOM%100)+1))
e=$(((RANDOM%100)+1))


op1=$(($a+$b*$c))
op2=$(($a%$b+$c))
op3=$(($c+$a/$b))
op4=$(($a*$b+$c))

min=$op1
max=$op1

if (($op2<$min))
	then
	min=$op2;
fi
if (($op3<$min))
	then
	min=$op3;
fi
if (($op4<$min))
	then
	min=$op4;
fi

if (($op2>max))
	then
	max=$op2
fi
if (($op3>max))
	then
	max=$op3
fi
if (($op4>max))
	then
	max=$op4
fi

echo "min="$min
echo "max="$max

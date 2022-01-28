#!/bin/bash -x

prime(){
		  num=$1
		  for (( i=2;$i<$num;i++ ))
		  do
					 if (($num%$i==0))
					 then
								break
					 fi
		  done

		  if ((num==i))
		  then
					 echo 1
		  else
					 echo 0
		  fi
}

palindrome(){
		  num=$1
		  sum=0
		  for ((sum=0;num!=0;num=num/10))
		  do
					 r=$(($num%10))
					 sum=$(($sum*10+$r))
		  done
		  echo $sum
}



read -p "Enter the number :" num
prime_out=$(prime $num)
if (($prime_out==1))
then
		  echo "the given number is prime"
else
		  echo "the given number is not a prime"
fi
rev=$(palindrome $num)
if (($num==$rev))
then
		  echo "palindrome"

		  prime_out=$(prime $rev)

		  if ((prime_out==1))
		  then
					 echo "the palindrome of $num is $rev  is prime"
		  else
					 echo "the palindrome of $num is $rev is not a prime"
		  fi
else
		  echo "$rev is not a palindrome of $num"
fi

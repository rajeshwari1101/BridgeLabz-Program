##prime function
prime()
{
	num=$1

	for ((flag=0,i=2;i<num/2;i++))
	do
		if ((num%i==0))
		then
			flag=1
			break;
		fi
	done
	if ((flag==0))
	then
		echo 1
	else
		echo 0
	fi
}


##palindrome function
palindrome()
{
	num=$1
	
	for ((rev=0;num!=0;num=num/10))
	do
		r=num%10
		rev=$(($rev*10+r))
	done
	echo $rev
}

#!/bin/bash 
#3

function pallindrome()
{
temp=$num
rev=0
while [ $num != 0 ]
do
rem=$(($num%10))
rev=$(($rev*10+$rem))
num=$(($num/10))
done
if [ $rev -eq $temp ]; then
	echo "$temp is a pallindrome"
else
	echo "$temp is not a pallindrome"
fi
}

function primecheck()
{
count=0
for (( i=1; i<=$num; i++ ))
do
        if [ $(($num%$i)) -eq 0 ]; then
        count=$(( $count+1 ))
        fi
done
if [ $count -eq 2 ]; then       #1 and number itself
        echo "$num is a Prime number"
	pallindrome "$num"
else
        echo "$num is not a Prime number"
	pallindrome "$num"
fi
}

read -p "Enter a number to check if it is prime: " num
primecheck "$num"



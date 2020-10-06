#!/bin/bash -x
#2

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

read -p "Enter a number to check if it is pallindrome or not:  " num
pallindrome "$num"

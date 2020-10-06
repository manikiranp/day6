#!/bin/bash -x
#2

high=100
low=1
echo "Think of a number between 1 to 100: "
magicnum=$((($high+($low-1))/2))
while [ $(($magicnum-$low)) -ne  1 ]
do
	echo "Enter 1 if less than $magicnum or Enter 0 if greater than $magicnum: "
	read num
	if [ $num -eq 1 ]; then
	high=$magicnum
	magicnum=$((($high+$low)/2))
	else
	low=$magicnum
        magicnum=$((($high+$low)/2))
	fi
done
echo "Magic number is $magicnum"

#!/bin/bash 
#2

echo "Think of a number between 1 to 100: "
high=100
low=1
magicnum=50
while [ $(($high - $low)) -ne  2 ]
do
	read -p "Enter 1 if less than $magicnum or Enter 0 if greater than $magicnum: " num
	if [ $num -eq 1 ]; then
	high=$magicnum
	magicnum=$((($high+$low)/2))
	else
        low=$magicnum
	magicnum=$((($high+$low)/2))
	fi
done
echo "Magic number is $magicnum"

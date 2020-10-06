#!/bin/bash 
#3
count1=1
count2=1
while [[ $count1 -le 11 && $count2 -le 11 ]]
do
	flip=$((RANDOM%2))
	if [ $flip -eq 1 ]; then
	echo "Heads: $count1"
	((count1++))
	else
	echo "Tails: $count2"
	((count2++))
	fi
done



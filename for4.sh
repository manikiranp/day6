#!/bin/bash 

#4
read -p "Enter the range to get prime numbers: " r
for (( i=1; i<=$r; i++ ))
do

	count=0
	for (( j=1; j<=$i; j++ ))
	do
        if [ $(($i%$j)) -eq 0 ]; then
        count=$(( $count+1 ))
        fi
	done

	if [ $count -eq 2 ]; then       #1 and number itself
	echo "$i"
	fi
done

#!/bin/bash
#4

count=100
counter=1
echo "Intial balance: Rs.100"
while [[ $count -ge 0 && $count -le 200 ]]
do
	echo "Updated balance: Rs.$count"
	echo "Trial No: $counter"
        flip=$((RANDOM%2))
        if [ $flip -eq 0 ]; then
        echo "Lost----"
        ((count--))
	((counter++))
	else
	echo "Won+++++"
	((count++))
	((counter++))
        fi
done
echo "Total number of trails are: $(($counter-1))"



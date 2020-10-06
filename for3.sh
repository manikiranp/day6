#!/bin/bash -x
#3

read -p "Enter a number to check if it is prime: " p
count=0
for (( i=1; i<=$p; i++ ))
do
        if [ $(($p%$i)) -eq 0 ]; then
        count=$(( $count+1 ))
        fi
done

if [ $count -eq 2 ]; then       #1 and number itself
        echo "$p is a Prime number"
else
        echo "$p is not a Prime number"
fi

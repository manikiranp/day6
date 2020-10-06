#!/bin/bash -x
#5

read -p "Enter a number to get its factorial!: " n
fact=1
for (( i=1; i<=$n; i++ ))
do
	fact=$(($fact*$i))
done
echo "Factorial of $n!= $fact"


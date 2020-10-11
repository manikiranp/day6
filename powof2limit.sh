#!/bin/bash 

read -p "Enter a number to get power of 2 till 256: " n
pow=1
i=1
while [[ $pow != 256  && $i -lt $n ]]
do
	pow=$((2*$pow))
	echo "2^$i=$pow"
	((i++))
done


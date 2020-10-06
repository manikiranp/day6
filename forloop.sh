#!/bin/bash -x

count=0
for (( counter=1; counter<=5; counter++ ))
do
	echo "$counter"
	if [ $(($counter%2)) -eq 0 ]
	then	count=$(( $count+1 ))
	fi
done
 echo "count = $count"

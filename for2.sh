#!/bin/bash -x

#2
read -p "Enter a number to get nth harmonic number: " np
if [ $np -eq 0 ]; then
        echo "0"
else
	hn=0
        for (( i=1; i<=$np; i++ ))
        do
        hn=`perl -E "say $hn+(1/$i)"`
        done
fi

echo "$np th harmonic number is: $hn"

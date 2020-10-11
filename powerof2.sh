#!/bin/bash 

#1
res=1
read -p "Enter a number to get power of 2 till that number: " n
if [ $n -eq 0 ]; then
        echo "2^0=$res"
else
        for (( i=1; i<=$n; i++ ))
        do
        res=$((2*$res))
        echo "2^$i=$res"
done
fi

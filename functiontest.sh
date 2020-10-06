#!/bin/bash -x

function myFunction {  #function <name>() or function <name>
	echo $1
}

x="$( myFunction $((RANDOM%2)) )"
if [ $x -eq 1 ]; then
	echo "Success"
else
	echo "Failure"
fi

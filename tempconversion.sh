#!/bin/bash -x
#1

echo "Select the Temperature coversion units: "
echo -e "Select an option\n1)degF to degC or 2)degC to degF: "
read n

function conversion() {
        case $n in
                2)
                        x=`perl -E "say (($t*9/5)+32) "`
                        ;;
                1)
                        x=`perl -E "say (($t-32)*5/9) "`
                        ;;
                *)
                        x=0
                        ;;
        esac
}

if [ $n -eq 1 ]; then
read -p "Enter temperature in Fahrenheit: " t
conversion "$1"
echo "$t in fahrenheit is equal to $x celsius"
elif [ $n -eq 2 ]; then
read -p "Enter temperature in Celsius: " t
conversion "$2"
echo "$t in celsius is equal to $x Fahrenheit"
else 
echo "Error.."
fi


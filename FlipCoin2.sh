#!/bin/bash -x

echo "Welcome to the flip coin combination program."

read -p "Enter the number of times you want to flip : " a

declare -A dictionary


for (( i=1;i<=$a;i++ ))
do

        combination=""
        for (( j=1;j<=1;j++ ))
        do

                x=$(($RANDOM%2))

        if [ $x -eq 0 ]
        then
                combination=$combination"H"
        else
                combination=$combination"T"
        fi
        done
        dictionary[$combination]=$((${dictionary[$combination]}+1))
done
echo ${!dictionary[@]}

echo ${dictionary[@]}
for key in ${!dictionary[@]}
do
        value=${dictionary[$key]}
        echo "$key $((( $value *100 ) / $a )) %"
done | sort -k2 -nr | awk 'NR==1{print $1"    " $2"%"}'

#!/bin/bash -x

echo "Welcome to the flip coin combination program."

read -p "Enter the number of times you want to flip : " a
read -p "Enter the choice of combination :
1) Singlet
2) Doublet  " b


declare -A dictionary


for (( i=1;i<=$a;i++ ))
do

        combination=""
        for (( j=1;j<=$b;j++ ))
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

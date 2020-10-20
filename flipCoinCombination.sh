#! /bin/bash

# Welcome message
echo "Welcome to Flip Coin Combination Program."


# SINGLET COMBINATION

#declared ditionary
declare -A dict

#declared dictionary to store combination percentages
declare -A dictionary

head=0
tail=0

for (( i=0; i<50; i++ ))
do
    # Flipping a coin
    coin=$((RANDOM%2))

    if [ $coin -eq 1 ]
    then
        dict[$i]="H"
        head=$(($head+1))
    else
        dict[$i]="T"
        tail=$(($tail+1))
    fi
done

# displaying dictionary
echo "singlet combinations :[ ${dict[@]} ]"

# calculated head percentage
headpercentage=$(echo "$head" | awk '{printf "\n" $1*100/50}' )

echo "Head percentage : $headpercentage%"

# calculated tail percentage
tailpercentage=$(echo "$tail" | awk '{printf "\n" $1*100/50}' )
echo "Tail percentage : $tailpercentage%"

echo "================================================="

dictionary[H]="$headpercentage"
dictionary[T]="$tailpercentage"
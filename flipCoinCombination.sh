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

# DOUBLET COMBINATIONS

#declared ditionary
declare -A dict1

#declared dictionary to store combination percentages
declare -A dictionary1

hh=0
tt=0
ht=0
th=0

for (( i=0; i<50; i++ ))
do
    # Flipping a coin
    coin=$((RANDOM%4))

    if [ $coin -eq 0 ]
    then
        dict1[$i]="HH"
        hh=$(($hh+1))
    elif [ $coin -eq 1 ]
    then
        dict1[$i]="TT"
        tt=$(($tt+1))
    elif [ $coin -eq 2 ]
    then
        dict1[$i]="HT"
        ht=$(($ht+1))
    else
        dict1[$i]="TH"
        th=$(($th+1))
    fi
done
 
# displaying dictionary
echo "doublet combinations :[ ${dict1[@]} ]"

# calculated HH percentage
hhpercentage=$(echo "$hh" | awk '{printf "\n" $1*100/50}' )
echo "HH percentage : $hhpercentage%"

# calculated TT percentage
ttpercentage=$(echo "$tt" | awk '{printf "\n" $1*100/50}' )
echo "TT percentage : $ttpercentage%"

# calculated TH percentage
thpercentage=$(echo "$th" | awk '{printf "\n" $1*100/50}' )
echo "TH percentage : $thpercentage%"

# calculated HT percentage
htpercentage=$(echo "$ht" | awk '{printf "\n" $1*100/50}' )
echo "HT percentage : $htpercentage%"

echo "================================================="

dictionary1[TT]="$ttpercentage"
dictionary1[TH]="$thpercentage"
dictionary1[HT]="$htpercentage"
dictionary1[HH]="$hhpercentage"
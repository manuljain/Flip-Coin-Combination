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

# TRIPLET COMBINATIONS

#declared ditionary
declare -A dict2

#declared dictionary to store combination percentages
declare -A dictionary2

hhh=0
hht=0
hth=0
htt=0
thh=0
tht=0
tth=0
ttt=0

for (( i=0; i<50; i++ ))
do
    # Flipping a coin
    coin=$((RANDOM%8))

    if [ $coin -eq 0 ]
    then
        dict2[$i]="HHH"
        hhh=$(($hhh+1))
    elif [ $coin -eq 1 ]
    then
        dict2[$i]="HHT"
        hht=$(($hht+1))
    elif [ $coin -eq 2 ]
    then
        dict2[$i]="HTH"
        hth=$(($hth+1))
    elif [ $coin -eq 3 ]
    then
        dict2[$i]="HTT"
        htt=$(($htt+1))
    elif [ $coin -eq 4 ]
    then
        dict2[$i]="THH"
        thh=$(($thh+1))
    elif [ $coin -eq 5 ]
    then
        dict2[$i]="THT"
        tht=$(($tht+1))
    elif [ $coin -eq 6 ]
    then
        dict2[$i]="TTH"
        tth=$(($tth+1))
    else
        dict2[$i]="TTT"
        ttt=$(($ttt+1))
    fi
done
 
# displaying dictionary
echo "triplet combinations :[ ${dict2[@]} ]"

# calculated HHH percentage
hhhpercentage=$(echo "$hhh " | awk '{printf "\n" $1*100/50}' )
echo "HHH percentage : $hhhpercentage%"

# calculated HHT percentage
hhtpercentage=$(echo "$hht " | awk '{printf "\n" $1*100/50}' )
echo "HHT percentage : $hhtpercentage%"

# calculated HTH percentage
hthpercentage=$(echo "$hth " | awk '{printf "\n" $1*100/50}' )
echo "HTH percentage : $hthpercentage%"

# calculated HTT percentage
httpercentage=$(echo "$htt " | awk '{printf "\n" $1*100/50}' )
echo "HTT percentage : $httpercentage%"

# calculated THH percentage
thhpercentage=$(echo "$thh " | awk '{printf "\n" $1*100/50}' )
echo "THH percentage : $thhpercentage%"

# calculated THT percentage
thtpercentage=$(echo "$tht " | awk '{printf "\n" $1*100/50}' )
echo "THT percentage : $thtpercentage%"

# calculated TTH percentage
tthpercentage=$(echo "$tth " | awk '{printf "\n" $1*100/50}' )
echo "TTH percentage : $tthpercentage%"

# calculated TTT percentage
tttpercentage=$(echo "$ttt " | awk '{printf "\n" $1*100/50}' )
echo "TTT percentage : $tttpercentage%"

echo "================================================="

dictionary2[HHH]="$hhhpercentage"
dictionary2[HHT]="$hhtpercentage"
dictionary2[HTH]="$hthpercentage"
dictionary2[HTT]="$httpercentage"
dictionary2[THH]="$thhpercentage"
dictionary2[THT]="$thtpercentage"
dictionary2[TTH]="$tthpercentage"
dictionary2[TTT]="$tttpercentage"
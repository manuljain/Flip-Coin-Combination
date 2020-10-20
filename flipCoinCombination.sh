#! /bin/bash

# Welcome message
echo "Welcome to Flip Coin Combination Program."

# Flipping a coin
coin=$((RANDOM%2))

if [ $coin -eq 1 ]
then
	echo "it's a head..head wins"
else
	echo "it's a tail..tail wins"
fi

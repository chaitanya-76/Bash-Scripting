#!/usr/bin/bash

echo "Welcome to Elden Ring"
echo -e "=======================\n"

beast=$(( $RANDOM % 10 ))

echo "You are fighting Margit Now..........."

read -r -p "Choose the option which will decide you wins or loose (0/9) : " player

if [[ $beast == $player ]];
then
	echo "You win Bro"
else
	echo "HaHa You lose noob."
fi



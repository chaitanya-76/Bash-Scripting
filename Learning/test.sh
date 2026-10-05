#!/usr/bin/bash

read -r -p "Enter your name: " name

read -r -p "Enter you age: " age

sus=$(( $RANDOM % 20 ))

echo "Your name is $name and you are $age years old"

echo  "You will get rich at age $(( $sus + $age ))"

echo $bhai
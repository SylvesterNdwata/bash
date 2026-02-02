#!/bin/bash

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in 

	1)
		type="Samurai"
		hp=10
		attack=20
		magic=15
		;;
	2)
		type="Prisoner"
		hp=15
		attack=10
		magic=5
		;;
	3)
		type="Prophet"
		hp=20
		attack=12
		magic=25
		;;
esac

echo "You have choosen $type class. Your HP is $hp, your attack is $attack and your magic is $magic."


echo "You died"

# First beast battle

read -p "Your first beast approaches. Prepare to battle. Pick a number between 0 and 1: " user

beast=$(( $RANDOM % 2 ))
marget=$(( $RANDOM % 10 ))

if [[ $user == $beast && 47 > 23 ]]; then
	echo "Beast vanquished"
	read -p "Now it's time to battle Marget, pick a number between 0 and 9: " novice
	if [[ $novice == $marget || $novice == "coffee" ]]; then
		echo "Margit Vanquished, Congratulations"
	elif [[ $USER == "root" ]]; then
		echo "Root always wins"
	else
		echo "You Died, it was a worth the try warrior"
	fi
else
	echo "You Died!!"
fi



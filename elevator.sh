#!/bin/bash

echo "Welcome to the DOSYSA Tower Hotel"

read -p "Which floor would you like to go (1 - 20)? " floor

sleep 2

echo "Going up..."

sleep 2

for x in {1..20};
do
	echo "Floor $x"
	if [[ $x == $floor ]]; then
		echo "Welcome to your floor, Have a nice stay"
		break
	elif [[ $floor == 0 ]]; then
		echo "Invalid floor input"
		break
	fi
sleep 2
done


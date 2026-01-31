#!/bin/bash

read -p "Choose a class
1 - Prisoner
2 - Priest
3 - Samurai " user

case $user in

	1)
		type="Prisoner"
		hp=60
		attack=20
		magic=20;;
	2)
		type="Priest"
		hp=70
		attack=30
		magic=30;;
	3)
		type="Samurai"
		hp=90
		attack=50
		magic=25;;
esac

echo "You choose type $type, your hp is $hp, your attack is $attack and your magic level is $magic"

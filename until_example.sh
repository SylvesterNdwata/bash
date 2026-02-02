#!/bin/bash

until [[ $order == "coffee" ]]
do
	read -p "Would you like coffee or tea? " order
done

echo "Excellent choice, here is your coffee"

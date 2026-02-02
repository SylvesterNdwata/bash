#!/bin/bash


name=$1
feature=$2
city=$3

user=$(whoami)
date=$(date)
location=$(pwd)
privateip=$(hostname -I | awk '{print $1}')
publicip=$(curl -s https://ipecho.net/plain)
weather=$(curl -s https://wttr.in/$city?0pq)
dadjoke=$(curl -s -H 'Accept: text/plain' https://icanhazdadjoke.com)

echo "Good morning $name"

sleep 1

echo "You're looking good today $name!!"

sleep 1

echo "You have the best $feature I've ever seen $name!!"

sleep 2

echo "Welcome to the system, you are logged in as $user and your current location in the system is $location. Today's date is $date"

sleep 2

echo "Your private ip address is $privateip and your public ip address is $publicip"

sleep 2

echo "The weather today is $weather"

sleep 2

echo "The dad joke of the day is: $dadjoke"


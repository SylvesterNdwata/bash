
#!/bin/bash

read -p "What is your name?: " name
read -p "How old are you?: " age

getrich=$((($RANDOM%15)+$age))

echo "Hello, $name, you are $age years old."
echo "Drumrolls.........."

sleep 2

echo "You are going to be rich when you are $getrich years old"



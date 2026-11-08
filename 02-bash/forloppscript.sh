#!/bin/bash

for (( i=1; i<=5; i++ ))
do 
    echo "Number: $i"
done

fruits=("apple" "banana" "cherry" "date")

for fruit in "${fruits[@]}"
do
    echo "Fruit: $fruit"
done

for number in $(seq 1 5)
do 
    echo "Number: $number"
done

for (( i=1; i<=5; i++ ))
do
    if [ $i -eq 3 ]; then
        continue
    fi
    echo "Number: $i"
done

count=1

while true
do

    echo "Count: $count"
    ((count++))
    if [ $count -eq 4 ]
    then
        break
    fi
done

while [ $count -le 5 ]
do
    if [ $count -eq 3 ]
    then
        ((count++))
        continue
    fi
    echo "Second Count: $count"
    ((count++))
done
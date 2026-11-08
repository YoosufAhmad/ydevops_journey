#!/bin/bash

echo "All Parameters: $@"

name="Barseesa"
count=1
victories=("Nuketown", "Grid", "Killhouse")

echo "Hello Mr $name, Welcome to ${victories[1]}"
length=5
width=7

area=$((length * width))
perimeter=$((2 * (length + width)))
echo "Total Area:  $area"
echo "Total Perimeter: $perimeter"

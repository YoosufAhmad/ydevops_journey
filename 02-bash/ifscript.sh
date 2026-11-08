#!/bin/bash
name="Ben"

if [ "$name" == "Ben" ]
then
	echo "Hello, $name!"
fi

age=30

if [ $age -gt 18 ]
then
	echo "You are an adult!"
fi

grade=80

if [ $grade -ge 90 ] && [ $grade -le 100]
then 
	echo "Excellent! You achieved $grade"
elif [ $grade -ge 80 ] && [ $grade -lt 90 ]
then
	echo "Good! You achieved $grade"
else 
	echo "You need to improve. You achieved $grade"
fi

if [ $age -gt 18 ]; then
	echo "You are eligible based on age!"
	if [ $grade -ge 80 ]; then
		echo "You are eligible based on grade!"
		echo "Congratulations! You are eligible for the scholarship."
	else
		echo "You are not eligible based on grade."
	fi
else 
	echo "You are not eligible based on age."
fi




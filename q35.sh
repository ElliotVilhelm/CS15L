#!/bin/bash

# Solution to Midterm review question 35

yname="foo"
while [ "$yname" != "" ]
do
	echo -n "Enter your name"
	read yname
	if [ "$yname" != "" ]
	then
		echo "Hi $yname"
	fi
done

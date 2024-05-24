#!/usr/bin/env bash

echo "What is your favorite operative system?"
read OS

if [ $OS == "Windows" ] || [ $OS == "Mac" ] ;then
	echo "Wow, you suck"
elif [ $OS == "Linux" ] ; then
	echo "I want to be your friend"
else
	echo "Is $OS even an operative system?"
fi

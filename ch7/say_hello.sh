#!/usr/bin/env bash

echo "Hello, Whats your name?"
read -t 5 NAME
if [ ${NAME:-"null"} = "null" ] ; then
echo "Wow, no name huh?"
else
echo "Wow, ${NAME} sounds like a punk"
fi

#!/usr/bin/env bash

echo "This will show the numbers from 1 to 100"
for ((a=0; a <= 100; a++))
do
	echo "$a"
done

for FILE in `/bin/ls`
do
	echo $FILE
done

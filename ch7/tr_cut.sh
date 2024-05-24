#!/usr/bin/env bash

let TOTAL=0
for SIZE in `ls -l ~/Projects/ | tr -s ' '| cut -d' ' -f5 `
do
	TOTAL=$(($TOTAL+$SIZE))
done
echo $TOTAL

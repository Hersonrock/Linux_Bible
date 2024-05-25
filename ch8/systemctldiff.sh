#!/usr/bin/env bash

TEMP_DIR="./temp"
BEFORE="$TEMP_DIR/before_services.txt"
AFTER="$TEMP_DIR/after_services.txt"
if [ $# != 1 ] ;then
	echo "USAGE: $0 [PACKAGE]"
	exit
fi
PACKAGE=$1
INSTALLED_PACKAGE=$(dpkg -l \
	| grep -w "^ii $PACKAGE\ ")

if [ -n $INSTALLED_PACKAGE ] ; then
	[ -d $TEMP_DIR ] || mkdir $TEMP_DIR
	echo "Installing Apache..."
	systemctl list-units --type=service > $BEFORE 
	apt-get install $PACKAGE -y 1>/dev/null
	systemctl list-units --type=service > $AFTER
	echo "Done installing...Listing differences..."
	diff $BEFORE $AFTER
else
	echo "$PACKAGE is already installed"
fi

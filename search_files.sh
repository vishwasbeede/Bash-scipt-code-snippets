#!/bin/bash

#Script used to searchfile in given path and filesize and search those files.
#Wiil be added ----- will compress all searched files into a backup file and move to the given destination

if  [ ! -z "$1" ] && [ "$1" -ge 0 ] || [ -n "$2" ] 
then 
echo "To Search file size given with $1"
else
echo "Enter a valid size and pathname"
	exit
fi
if [ -d "$2" ]
	then echo "Path $2 exists"
	cd $2
else
	echo "Directory not exists"
	exit
fi

echo "files in $2 with size $1 are"
echo "-----------------------------"    
ls -ls | awk '{if($6== "'$1'") print $10}'

echo "-----------------------------"
echo ""


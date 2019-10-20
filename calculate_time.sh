#!/bin/bash

#This is script is used to calculate time in minutes between two timestamps
#backup.txt as 2019-04-02T06:01:37-06:00


#time11="2019-10-16T15:38:37-06:00"

echo -n "provide find difference in format below"
echo  "yyyy-mm-ddThh:mm:ss"

read time11

if [-z $time11]
 then echo "Please enter data above"
 exit
fi

#time11=$(tail -1 backup.txt |tr "T" " "| cut -c 1-19 )
#Here used tr to replace T with space

time11=$( echo "${time11}" |tr "T" " "|cut -c 1-19 )

echo "input date is ${time11}"

date1=$(date)

echo "current time is ${date1}"

time1=$(date "+%s" -d "$time11")
echo "$time1"

time2=$(date "+%s")

echo "$time2"
diff=$(( (time2 - time1)/60))

echo "$diff"

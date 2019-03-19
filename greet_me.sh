#!/bin/bash
# Shell script to greet a user differently depending on time of the day

hr=`date +%H`
username=`whoami`
if [ $hr -lt 12 ]; then
	echo "Good morning $username!"
	notify-send "Good morning $username!"
elif [ $hr -lt 16 ]; then
	echo "Good afternoon $username!"
	notify-send "Good afternoon $username!"
else
	echo "Good evening $username!" 
	notify-send "Good evening $username!"
fi

#!/bin/bash
# shell script for birthday reminder

today=`date +%d/%m`
name=`awk -F"," '$2 == "'$today'"{print $1}' ~/College/OSL/Shell\ scripts/birthdays.csv`

for i in $name; do
	echo "Today is "$i"'s birthday"
done

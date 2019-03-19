#!/bin/bash
# Shell script to find max, min of three numbers using commandline arguments

if [ $# -ne 3 ]; then
 	echo "3 command line arguments required!"
else
	max=$1
	min=$1
	for i in $@; do
		if [ $i -gt $max ]; then
			max=$i
		fi
		if [ $i -lt $min ]; then
			min=$i
		fi
	done

	echo "Max=$max, Min=$min"
fi

#!/bin/bash
directory=$1
numOfBackups=$2

for f in $directory*.txt; do
	i=$numOfBackups


while [ $i -ge 1 ]; do

	echo cp $f.$((i-1)).bak $f.$i.bak $directory
	i=$((i-1))
	
	done

	echo cp $f $f.0.bak $directory

done

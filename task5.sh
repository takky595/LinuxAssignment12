#!/bin/bash
dirlist=$(sed 's/:/\n/g' <<< "$PATH")
for i in $dirlist
do
	count=$(find $i -maxdepth 1 -type f -executable -print | wc -l)
	echo $i:$count
done

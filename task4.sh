#!/bin/bash
dirlist=$(ls -d */| grep lab)
for i in $dirlist
do
	mv $i Linux$i
done

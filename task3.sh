#!/bin/bash
if [[ $# -eq 0 ]]
then
	echo 'To check disk usage use ./task3.sh [High Limit]'
	exit 1
fi
df | awk '$6=="/"'|awk -v a=$1 'a<$5{print "DISK USAGE IS HIGH"}'
exit 0

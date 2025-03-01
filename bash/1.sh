#!/bin/bash

timeframe=$1
file=$2

touch $file.txt

while [ $timeframe > 0 ]
do
	loadavg = cat /proc/loadavg
	dt = date "+[\%d\%m](http://\%d\%m/).\%Y \%H\%M"
	echo "$dt $file" >> $file.txt
	timeframe=$(( timeframe - 1))
	sleep 1
done

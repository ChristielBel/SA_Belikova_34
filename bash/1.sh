#!/bin/bash

file=$1
timeframe=$2
end=$((SECONDS + timeframe))

while [ $SECONDS -lt $end ]; do
    loadavg=$(cat /proc/loadavg)
    dt=$(date "+%d.%m.%y %H:%M")
    echo "$dt = $loadavg" >> "$file"
    sleep 1
done

echo "Logging completed. Output saved to $file."

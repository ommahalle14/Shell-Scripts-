#!/bin/bash

sum=0
count=0

echo "Enter numbers (type 'done' to stop):"

while read num
do
    [ "$num" = "done" ] && break

    sum=$((sum + num))
    count=$((count + 1))
done

if [ $count -gt 0 ]; then
    avg=$((sum / count))
    echo "Sum = $sum"
    echo "Average = $avg"
else
    echo "No numbers entered"
fi

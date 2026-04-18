#!/bin/bash

# ==========================
# Bash Loops Demo
# ==========================

echo "For Loop Example:"

for i in 1 2 3 4 5
do
    echo "Iteration number: $i"
done

echo "------------------------"

echo "While Loop Example:"

count=1

while [ $count -le 5 ]
do
    echo "Count is: $count"
    ((count++))
done

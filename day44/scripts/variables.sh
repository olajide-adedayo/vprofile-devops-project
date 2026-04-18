#!/bin/bash

# ===============================
# Bash Variables Demonstration
# ===============================

# User-defined variables
name="Olajide"
course="DevOps"
date_today=$(date)

echo "My name is $name"
echo "I am currently learning $course"
echo "Today's date is: $date_today"

echo "----------------------------------"

# System variables
echo "Current user: $USER"
echo "Home directory: $HOME"
echo "Current working directory: $PWD"
echo "Shell being used: $SHELL"

echo "----------------------------------"

# Simple calculation
num1=10
num2=5
sum=$((num1 + num2))

echo "Sum of $num1 and $num2 is: $sum"

echo "----------------------------------"

# Environment insight
echo "Hostname: $HOSTNAME"
echo "Path variable: $PATH"

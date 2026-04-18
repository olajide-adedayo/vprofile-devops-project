#!/bin/bash

# ===============================
# User Input in Bash
# ===============================

echo "Welcome to DevOps User Input Demo"

# Ask user for input
read -p "Enter your name: " name
read -p "Enter your role (e.g DevOps, Developer): " role

echo "----------------------------------"

echo "Hello $name!"
echo "Your role is: $role"

echo "----------------------------------"

# Simple logic based on input
if [ "$role" == "DevOps" ]; then
    echo "Great! You are learning infrastructure automation."
else
    echo "Nice! Keep exploring DevOps concepts."
fi

#!/bin/bash

# ==================================
# Quotes & Command Substitution Demo
# ==================================

name="Olajide DevOps"

echo "Using Double Quotes:"
echo "Hello $name"

echo "----------------------------------"

echo 'Using Single Quotes:'
echo 'Hello $name'

echo "----------------------------------"

echo "Command Substitution Example:"
current_date=$(date)
echo "Today's date is: $current_date"

echo "----------------------------------"

echo "Current directory is: $(pwd)"

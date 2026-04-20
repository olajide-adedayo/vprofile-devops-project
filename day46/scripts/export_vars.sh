#!/bin/bash

# ==================================
# Export Variables Demo
# ==================================

# Local variable
name="Olajide"

# Export variable (environment variable)
export project="DevOps"

echo "Local variable name: $name"
echo "Exported variable project: $project"

echo "----------------------------------"

# Open a subshell to demonstrate export behavior
bash -c 'echo "Inside subshell - project: $project"'

echo "----------------------------------"

echo "Current user: $(whoami)"

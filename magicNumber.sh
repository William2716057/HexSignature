#!/bin/bash

# Check if filename is provided as argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Read the first 4 bytes from the file
hex_magic=$(od -A n -t x1 -N 4 "$1" | awk '{$1=$1;print}' | tr -d ' ')

# Print the hex magic number
echo "$hex_magic"

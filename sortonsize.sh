#!/bin/bash

echo "Enter directory:"
read dir

# Find all files and sort by size
find "$dir" -type f -exec du -b {} + | sort -n

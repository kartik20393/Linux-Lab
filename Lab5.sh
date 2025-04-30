#!/bin/bash
# Display a message indicating the start of the process
echo "Files with read, write, and execute permissions:"
# Loop through all files I n the current directory and check for permissions
for file in *; do
    if [ -f "$file" ] && [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ]; then
        echo "$file"
    fi
done

#!/bin/bash
# Prompt for the source file and destination directory
read -p "Enter the path of the file to copy: " source_file
read -p "Enter the destination directory: " destination_dir

# Check for file and directory existence, then copy
if [[ -f "$source_file" && -d "$destination_dir" ]]; then
    cp "$source_file" "$destination_dir" && echo "File copied to '$destination_dir'." || echo "Failed to copy."
else
    [[ ! -f "$source_file" ]] && echo "Error: File '$source_file' does not exist."
    [[ ! -d "$destination_dir" ]] && echo "Error: Directory '$destination_dir' does not exist."
fi

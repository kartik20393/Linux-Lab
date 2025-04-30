#!/bin/bash

read -p "Enter a word to search for: " search_word
read -p "Enter the filename to search in: " filename

[[ ! -f "$filename" ]] && { echo "Error: File '$filename' does not exist."; exit 1; }

echo "Searching for '$search_word' in '$filename':"
grep -n "$search_word" "$filename" || echo "No matches found for '$search_word'."

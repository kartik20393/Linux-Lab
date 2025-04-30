#!/bin/bash
# Prompt the user for a string input
read -p "Enter a string: " input_string

# Count vowels using grep and wc
vowel_count=$(echo "$input_string" | grep -o -i "[aeiou]" | wc -l)

# Display the total number of vowels found
echo "Number of vowels in the string: $vowel_count"

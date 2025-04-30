#!/bin/bash
# Prompt the user to enter a string
read -p "Enter a string: " input_string

# Convert uppercase to lowercase and lowercase to uppercase
converted_string=$(echo "$input_string" | tr '[:upper:][:lower:]' '[:lower:][:upper:]')

# Display the original and converted strings
echo "Original string: $input_string"
echo "Converted string: $converted_string"

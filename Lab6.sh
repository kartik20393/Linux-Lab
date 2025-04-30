# Prompt for the source file and check existence
read -p "Enter the name of the file to copy: " source_file
[ -f "$source_file" ] || { echo "File '$source_file' does not exist."; exit 1; }

# Prompt for the destination file and copy
read -p "Enter the name for the new copy: " destination_file
cp "$source_file" "$destination_file" && echo "File '$source_file' has been copied to '$destination_file'." || echo "Failed to copy '$source_file'."

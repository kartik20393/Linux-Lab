#!/bin/bash

# Create data files with sample entries
cat <<EOL > file1.txt
apple
banana
cherry
date
fig
grape
EOL

cat <<EOL > file2.txt
banana
cherry
date
kiwi
lemon
mango
EOL

# Sort and compare the files
comm -3 <(sort file1.txt) <(sort file2.txt)

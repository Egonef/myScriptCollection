#!/bin/bash

# Check if file argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file1> [<file2> ...]"
    exit 1
fi

# Loop over all the files provided as arguments
for file in "$@"; do

    # Check if file has a supported extension
    if [[ "$file" == *".zip"* ]]; then
        unzip "$file"
    elif [[ "$file" == *".tar"* ]]; then
        tar -xf "$file"
    elif [[ "$file" == *".rar"* ]]; then
        unrar x "$file"
    else
        echo "Error: $file is not a supported file type"
        continue
    fi

    # Check if extraction was successful
    if [ $? -eq 0 ]; then
        echo "File extracted: $file"
    else
        echo "Error extracting file: $file"
    fi

done
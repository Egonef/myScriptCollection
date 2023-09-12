#!/bin/bash

#Set the file in the first argument as a variable
file="$1"


#Check if file has a supported extension

if  [ -z "$file" ]; then
    echo "You are missing an argument (Filename)"
else
    
    if [[ "$file" == *".zip"* ]] ; then
        unzip "$file"

    elif [[ "$file" == *".tar"* ]] ; then
        tar -xf "$file"

    elif [[ "$file" == *".rar"* ]] ; then
        unrar x "$file"

    fi

    echo "File extracted"

fi
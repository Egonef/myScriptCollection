#!/bin/bash

# scripts folder
carpeta_origen="scripts"

# bin folder
carpeta_destino="/bin"

# Check if scripts folder exists
if [ ! -d "$carpeta_origen" ]; then
    echo "Error: $carpeta_origen does not exist."
    exit 1
fi

# Check if bin folder exists
if [ ! -d "$carpeta_destino" ]; then
    echo "Error: $carpeta_destino does not exist."
    exit 1
fi

# Look for .sh files in "carpeta_origen"
for file_full in "$carpeta_origen"/*.sh; do
    
    if [ -f "$file_full" ]; then
        # Get rid of .sh extension
        
        file=$(basename "$file_full")
        
        extensionless_file="${file%.sh}"
        
        # Check if file already exists in bin folder
        if [ -f "$carpeta_destino/$extensionless_file" ]; then
            read -p "A script with the name $extensionless_file already exists in $carpeta_destino. Do you want to overwrite it? (y/n) " -n 1 -r
            echo
            if [[ ! $REPLY =~ ^[Yy]$ ]]; then
                echo "Skipping $extensionless_file."
                continue
            fi
        fi
        
        # Copy file in bin folder
        sudo cp "$file_full" "$carpeta_destino/$extensionless_file"
        
        # Check if copy was successful
        if [ $? -eq 0 ]; then
            # Give execution permissions
            sudo chmod +x "$carpeta_destino/$extensionless_file"
            echo "Script set up: $extensionless_file"
        else
            echo "Error: Failed to copy $file to $carpeta_destino."
        fi
    fi
done

echo "Process complete."
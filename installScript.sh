#!/bin/bash

# scripts folder
carpeta_origen="scripts"

# bin folder
carpeta_destino="/bin"

# Look for .sh files in "carpeta_origen"
for file_full in "$carpeta_origen"/*.sh; do
    
    if [ -f "$file_full" ]; then
        # Get rid of .sh extension
        
        file=$(basename "$file_full")
        
        extensionless_file="${file%.sh}"
        
        # Copy file in bin folder
        sudo cp "$file_full" "$carpeta_destino/$extensionless_file"

        # Give execution permisses
        sudo chmod +x "$carpeta_destino/$extensionless_file"

        echo "Script set up: $extensionless_file"
    fi
done

echo "Process complete."

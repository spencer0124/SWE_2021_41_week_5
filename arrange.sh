#!/bin/bash

files_folder="./files"

if [ ! -d "$files_folder" ]; then
    echo "folder is not found!!"
    exit 1
fi

alphabet_folders="./[a-z]"

chmod +w $alphabet_folders

for file in "$files_folder"/*; do
    if [ -f "$file" ]; then
        first_char=$(basename "$file" | cut -c1)
        mv "$file" "./$first_char"
        echo "Moving $(basename "$file") -> ./$first_char"
    fi
done
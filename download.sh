#!/bin/bash

# Create an array files that contains list of filenames
files=($(< urls.txt))

# Read through the url.txt file and execute wget command for every filename
while IFS='=| ' read -r param uri; do 
    for file in "${files[@]}"; do 
        wget "${uri}${file}"
    done
done < url.txt

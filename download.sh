#!/bin/bash

# Create an array files that contains list of filenames
files=($(< urls.txt))

rm -rf ~/dl
mkdir ~/dl

# Read through the url.txt file and execute wget command for every filename
while IFS='=| ' read -r param uri; do 
    for file in "${files[@]}"; do 
        wget -c "${uri}${file}" -p ~/dl/
    done
done < url.txt

#!/bin/bash

urls=(
        "https://releases.ubuntu.com/22.04/ubuntu-22.04.1-desktop-amd64.iso"
        "https://releases.ubuntu.com/22.04/ubuntu-22.04.1-live-server-amd64.iso"
        "http://ftp.antilo.de/pub/linux/centos/7.9.2009/isos/x86_64/CentOS-7-x86_64-DVD-2207-02.iso"
)

range=5
number=$((RANDOM % range))

echo "--------------------------Random number is : ${number}---------------------------------"

for ((run=1; run <= number; run++)); do
    echo "----------------------Downloading files for the ${run} time(s)----------------------------"
    rm -rf ~/dl
    mkdir ~/dl
    for url in ${urls[@]}; do
        wget -i $url -P ~/dl/
    done
done

#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Usage: $0 home_username remote_username ip_address password"
    exit 1
fi

home_username="$1"
remote_username="$2"
ip_address="$3"
password="$4"

# Use arguments to create an SSH key pair
ssh-keygen -t rsa -b 2048 -N "$password" -C "$remote_username@$ip_address" -f "/home/$home_username/.ssh/id_rsa"

echo "SSH key pair created for $username on $ip_address"
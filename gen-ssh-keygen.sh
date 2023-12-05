#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 home_username remote_username ip_address"
    exit 1
fi

home_username="$1"
remote_username="$2"
remote_ip_address="$3"

# Use arguments to create an SSH key pair
ssh-keygen -f "/home/$home_username/.ssh/id_rsa"

ssh-copy-id -i /home/$home_username/.ssh/id_rsa "$remote_username@$remote_ip_address"

echo "SSH key pair created for $remote_username on $remote_ip_address"

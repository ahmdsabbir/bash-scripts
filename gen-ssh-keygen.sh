#!/bin/bash

if [ "$#" -ne 4 ]; then
    echo "Usage: $0 home_username remote_username ip_address password"
    exit 1
fi

home_username="$1"
remote_username="$2"
remote_ip_address="$3"
password="$4"

# Use arguments to create an SSH key pair
ssh-keygen -f "/home/$home_username/.ssh/id_rsa.pub"

ssh-copy-id -i ~/.ssh/id_rsa.pub "$remote_username@$remote_ip_address"

echo "SSH key pair created for $username on $ip_address"

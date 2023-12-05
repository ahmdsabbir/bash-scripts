#!/bin/bash

if [ "$#" -lt 3 ]; then
    echo "Usage: $0 home_username remote_username ip_address [alias] [shell]"
    exit 1
fi

home_username="$1"
remote_username="$2"
remote_ip_address="$3"
alias="$4"
shell="$5"

ssh-keygen -f "/home/$home_username/.ssh/id_rsa"

ssh-copy-id -i /home/$home_username/.ssh/id_rsa "$remote_username@$remote_ip_address"

echo "SSH key pair created for $remote_username on $remote_ip_address"

if [ -n "$alias" ]; then
    if [ -n "$shell" ] && [ "$shell" = "zsh" ]; then
        echo "Setting alias in Zsh configuration file"
        echo "alias $alias='ssh $remote_username@$remote_ip_address'" >> "/home/$home_username/.zshrc"
        source /home/$home_username/.zshrc
    else
        echo "Setting alias in Bash configuration file"
        echo "alias $alias='ssh $remote_username@$remote_ip_address'" >> "/home/$home_username/.bashrc"
    fi

    echo "Alias set: $alias"
fi

#!/bin/bash
# Script to set up ansible user on a managed node.
# Author: Connor Rhodes (connorrhodes.com)

if [[ "$(whoami)" != "root" ]]; then
	echo "Switching to root user. Re-run script as root"
	sudo su
fi

useradd --create-home ansible
PASSWORD=$(< /dev/urandom tr -dc _A-Z-a-z-0-9\$\#\%\- | head -c 30)
echo -e "$PASSWORD\n$PASSWORD" | passwd ansible
echo "ansible user password is set to:"
echo "$PASSWORD"

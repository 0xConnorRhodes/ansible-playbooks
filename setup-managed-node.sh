#!/bin/bash
# Script to set up ansible user on a managed node.
# Once this script is run, the rest of the node can be configured with Ansible.
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

echo 'ansible ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

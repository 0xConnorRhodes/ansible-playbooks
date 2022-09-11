#!/bin/bash
# Script to rebuild cloudflare firewall rules. All cloudflare traffic will be directed to the cloudflare zone which will have only HTTPS access
# Author: Connor Rhodes
# Adapted from: https://gist.github.com/rraallvv/602ea1ed32f40074c1c509b5161da77d

# delete zone to remove all old firewall rules
sudo firewall-cmd --delete-zone=cloudflare --permanent

sudo firewall-cmd --new-zone=cloudflare --permanent

sudo firewall-cmd --zone=cloudflare --add-port=443/tcp --permanent

# IPv4 HTTPS
echo "adding IPv4 HTTPS"
for i in $(curl "https://www.cloudflare.com/ips-v4"); do
        echo "adding '$i'"
	sudo firewall-cmd --zone=cloudflare --add-source="$i" --permanent;
done

# IPv6 HTTPS
echo "adding IPv6 HTTPS"
for i in $(curl "https://www.cloudflare.com/ips-v6"); do
	echo "adding '$i'"
	sudo firewall-cmd --zone=cloudflare --add-source="$i" --permanent;
done

sudo firewall-cmd --reload

#!/bin/bash
echo "Configuing network..."
read -p "enter new ip address:" NEW_IPADDRESS
echo "$NEW_IPADDRESS"
sudo ip addr add $NEW_IPADDRESS dev ens33
read -p "enter gateway ip address" GATEWAY_IP
sudo ip route add default via  $GATEWAY_IP
echo "Network updated successfully!"

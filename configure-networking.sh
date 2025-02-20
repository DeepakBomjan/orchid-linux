#!/bin/bash
echo "Confiuring Network..."
read -p "Enter new ip address: " NEW_IPADDRESS
echo "$NEW_IPADDRESS"
read -p "Enter Default Gateway..." DEFAULT_GATEWAY
echo "$DEFAULT_GATEWAY"
sudo ip addr add $NEW_IPADDRESS dev enp0s3
sudo ip route add default via $DEFAULT_GATEWAY

print -p "Network Updated Successfully"

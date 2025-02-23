!/bin/bash
echo "Configuring Network..."

read -p "Enter new IP address:" NEW_IPADDRESS
echo "$NEW_IPADDRESS" 
read -p "Enter default  gateway:" DEFAULT_GATEWAY
echo "$DEFAULT_GATEWAY" 
sudo ip addr add $NEW_IPADDRESS dev enp0s3
sudo ip route add default via $DEFAULT_GATEWAY

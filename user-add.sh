#!/bin/bash

echo -e "Select an option:\n1) Admin\n2) Regular"
read -p "Enter your choice: " choice

case $choice in
1)
echo "You selected Admin."
# Add admin-specified actions here
read -p "Enter add username: " username
sudo useradd -G sudo $username
sudo passwd $username
;;
2)
echo "You selected Regular."
# Add  regular user actions here
;;
*)
echo "Invalid choice. Please enter 1 or 2."
;;
esac

#!/bin/bash

echo "Creating a User..."


echo "Select an option: \n 1>Admin User \n 2> Regular User"
read -p "Enter your choice: " choice

case $choice in
1)  
echo "You selected admin"
read -p "Enter the username: " USER_NAME
sudo useradd -m -G sudo $USER_NAME
echo "Enter the password" 
sudo passwd $USER_NAME
;;
2)
echo "you selected regular: "
read -p "Enter the username: " USER_NAME

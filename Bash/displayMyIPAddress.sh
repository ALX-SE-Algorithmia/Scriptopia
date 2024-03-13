#!/usr/bin/env bash
# A Bash script (soon to be a command) that displays my IP address
# This script works on Ubuntu Linux
#
# Installing the necessary packages
sudo apt install net-tools
# Store the username in a variable
user=$(whoami)
# A variable that stores my IP address
myIPAddress=$(ifconfig | grep "netmask" | awk '{print $2}' | grep -v "127.0.0.1" | head -n 1)
echo ""
echo ""
echo "Displaying your IP address"
sleep 2.5
echo "Dear $user, your IP address is: $myIPAddress"
sleep 1.25
echo ""
echo ""

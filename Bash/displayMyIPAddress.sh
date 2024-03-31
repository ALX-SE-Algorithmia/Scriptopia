#!/usr/bin/env bash
# echo ""
# This Bash script creates a global alias to display my IP address, regardless of my machine
echo "" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "" >> ~/.bashrc
echo "# ======= My Created Aliases =======" >> ~/.bashrc
echo "#" >> ~/.bashrc
echo "# This Alias displays my IP Address with just a command: displayMyIPAddress" >> ~/.bashrc
# echo 'alias displayMyIPAddress="echo \$(ifconfig | grep 'netmask' | awk '{print \$2}' | grep -v '127.0.0.1' | head -n 1)"' >> ~/.bashrc
echo "alias displayMyIPAddress=\"echo Your IPv4 Address is \$(ifconfig | grep netmask | awk '{print \$2}' | grep -v 127.0.0.1 | head -n 1)\"" >> ~/.bashrc
echo "Done!"
sleep 3
echo "Do run this command:"
echo "sudo source ~/.bashrc"
echo "After doing that, run this command, to display your IP address: displayMyIPAddress"

#!/bin/bash

clear

echo "══════ DELETE USER ══════"
echo ""

read -p "Enter username: " user

userdel -r $user

iptables -F $user
iptables -X $user

sed -i "/^$user /d" /etc/slowdns-manager/users.db

echo ""
echo "User deleted successfully"

read -p "Press Enter"
menu

#!/bin/bash

clear

echo "================================"
echo "  ADVANCED SSH MANAGER INSTALL"
echo "================================"

sleep 2

apt update -y
apt install bc iptables curl jq -y

mkdir -p /etc/ssh-manager
touch /etc/ssh-manager/users.db

cp ssh-manager.sh /usr/local/bin/
cp monitor.sh /usr/local/bin/
cp traffic.sh /usr/local/bin/

chmod +x /usr/local/bin/ssh-manager.sh
chmod +x /usr/local/bin/monitor.sh
chmod +x /usr/local/bin/traffic.sh

ln -s /usr/local/bin/ssh-manager.sh /usr/local/bin/menu

nohup monitor.sh >/dev/null 2>&1 &

echo ""
echo "INSTALL COMPLETE"
echo "Type: menu"
echo ""

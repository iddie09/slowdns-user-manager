#!/bin/bash

apt update -y
apt install iptables cron bc -y

mkdir -p /etc/slowdns-manager

cp *.sh /etc/slowdns-manager/

cp menu /usr/local/bin/menu
chmod +x /usr/local/bin/menu

chmod +x /etc/slowdns-manager/*.sh

touch /etc/slowdns-manager/users.db

echo "*/1 * * * * root bash /etc/slowdns-manager/monitor.sh" >> /etc/crontab

echo "Installation Complete"
echo "Run: menu"

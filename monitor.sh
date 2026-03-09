#!/bin/bash

tmpfile=/tmp/users.tmp
> $tmpfile

while read user limit used
do

traffic=$(iptables -L $user -v -x | awk 'NR==3 {print $2}')

new_used=$((used + traffic))

if [ $new_used -ge $limit ]
then

userdel -r $user
iptables -F $user
iptables -X $user

echo "$user removed (data limit reached)"

else

echo "$user $limit $new_used" >> $tmpfile

fi

done < /etc/slowdns-manager/users.db

mv $tmpfile /etc/slowdns-manager/users.db

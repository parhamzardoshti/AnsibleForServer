#!/bin/bash

name=$1
pass=$2

clear
useradd $name

echo "$pass" | passwd $name --stdin
echo -e "$pass\n$pass" | smbpasswd -a $name
echo -e "[$name]\n\tcomment = $name sharing\n\tpath=/home/$name\n\tread only=NO
	\n\tpublic=yes\n\tguest ok=yes\n\tbrowsable=yes\n\tvalid user=$name\n\t" >> /etc/samba/smb.conf
clear
	#config selinux
setsebool -P samba_enable_home_dirs on
restorecon -R /home/$name
ip=$(ifconfig | tail -9 | head -2 | tail -1 | cut -c 14-24)
echo " this is your $ip for connection"
echo " make sure that your windows can pings your linux server ip !"
systemctl restart smb

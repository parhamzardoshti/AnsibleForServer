# AnsibleForServer
Ansible Playbook for install and config famous server services in Linux Operating Systems

- NFS 
- Git 
- CSF firewall
- fail2ban
- samba
- LEMP (mariadb, php-fpm, nginx)
- postfix
- vsftpd
- squid proxy server
- wordpress
- apache2

# warning
- this Ansible role has been successfully  tested on RedHat base systems
- For security reasons you should run this play book as root user
- Because of using CSF Firewall We Disable Firewalld on System so Make sure csf works well ... 
- in most cases you dont need to install all of these services so comment those that you dont want to install on your server 

## How to run
1. `cd /root/` clone the project `https://github.com/parhamzardoshti/AnsibleForServer.git`
2. `vim group_vars/all` and Fill in the variables
3. Thats all !!:)  now come to AnsibleForServer/ and run play book :   `ansible-playbook main.yaml`

## TODO
- [x] Add firewall service 
- [x] write Samba Auto bash script
- [x] Test and trouble shoot on Debian systems
- [x] Add more services
- [x] improve playbooks syntax 
- [x] make REDME.md better
- [x] add some FinalCheck
- [ ] trouble shoot squid and postfix on debians 


# AnsibleForServer
Ansible Playbook for install and config famous server services in Linux Operating Systems
services:
- nfs
- csf firewall
- fail2ban
- samba
- nginx
- postfix
- vsftpd
- openvpn

# warning
- For security reasons you should run this play book as root user
- Because of using CSF Firewall We Disable Firewalld on System so Make sure csf works well ... 
- in most cases you dont need to install all of these services so comment some of them that you dont want to install on your server 

## How to run
1. Install Ansible in your System 
2. Clone the project `https://github.com/parhamzardoshti/AnsibleForServer.git`
3. `cd AnsibleForServer/roles/samba/tasks && vim main.yaml `then add user and pass as argument for shell script
4. `cd AnsibleForServer/roles/postfix/tasks/customize.sh` and add your gmailusername and gmail password  for postfix service
5. `cd AnsibleForServer/roles//geerlingguy.nfs/defaults/ && vim main.yml` (For Example:  nfs_exports: ["/home/shared *(rw,sync,no_root_squash)"] )
6. `vim AnsibleForServer/main.yaml` and add your target internet interface in shell modules that runs python scanner script 
7. Thats all !!:)  now come to AnsibleForServer/ and run play book :   `ansible-playbook main.yaml`

## TODO
- [x] Add firewall service 
- [x] write Samba Auto bash script
- [x] Test and trouble shoot on Debian systems
- [ ] Add more services
- [ ] improve playbooks syntax
- [ ] troubleshoot openvpn 
- [x] make REDME.md better
- [x] add some FinalCheck
- [ ] install postfix on debians 

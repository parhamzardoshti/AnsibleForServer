# AnsibleServer
Useful Ansible Playbook for install and config famous server services in Linux Operating Systems
services:
- nfs
- csf firewall
- fail2ban
- samba
- nginx
- postfix

# warning
- This plybook has been tested successfully on Redhat base systems like centos and fedora 
- For security reasons you should run this play book as root user

## How to run
1. Install Ansible in your System 
2. Clone the project `https://github.com/parhamzardoshti/AnsibleForServer.git`
3. `cd AnsibleForServer/roles/samba/tasks && vim main.yaml `then add user and pass as argument for shell script
4. `cd AnsibleForServer/roles/postfix/tasks/customize.sh` and add your gmailusername and gmail password  for postfix service
4. `cd AnsibleForServer/roles//geerlingguy.nfs/defaults/ && vim main.yml` (For Example:  nfs_exports: ["/home/shared *(rw,sync,no_root_squash)"] )
5. Thats all !!:)  now come to AnsibleForServer/ and run play book :   `ansible-playbook main.yaml`

## TODO
- [x] Add firewall service 
- [x] write Samba Auto bash script
- [ ] Test and trouble shoot on Debian systems
- [ ] Add more services
- [ ] improve playbooks syntax
- [x] make REDME.md better

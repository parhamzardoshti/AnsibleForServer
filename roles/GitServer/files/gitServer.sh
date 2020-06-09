#!/bin/bash
##

 # get repo name
repo_name=$1
mkdir -p /srv/git/
echo "Create an empty git repository"
 # bare git repo usuall commands
cd /srv/git/  && git init --bare $repo_name 
sleep 2
 # config repo
cd /srv/git/$repo_name &&  cp hooks/post-update.sample hooks/post-update && git config http.receivepack true && git config http.uploadpck true
 # improve repo performance
cd /srv/git/$repo_name && git update-server-info
 # make  privileges ok
chown -R apache:apache /srv/git/
 # end check
if [ -f /srv/git/ ];then
	echo "It's seems OK .."
else
	echo "seems not ok "
fi

  

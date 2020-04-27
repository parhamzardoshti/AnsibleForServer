#!/bin/bash

# variables
gamilusername=""
pass=""

# customization
touch /etc/postfix/sasl_password
echo $gmailusername@gmail.com:$pass > /etc/postfix/sasl_password
chown root:postfix /etc/postfix/sasl_password
chmod 640 /etc/postfix/sasl_password
postmap /etc/postfix/sasl_password



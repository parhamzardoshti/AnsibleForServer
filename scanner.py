#!/bin/python3
## 
###
#######
#### python script for scanning open ports
###### written by parham zardoshti 
####### AnsibleForServer
##########

import sys

import socket
import requests
import netifaces
from datetime import datetime
from argparse import ArgumentParser


# add manually arguments ...
parser = ArgumentParser()
parser.add_argument('-i', '--ip', default='wlp3s0', help='choose your  network interface [public/local]::')
args = parser.parse_args()
ip = args.ip
if ip == "public":
    ip = requests.get('https://api.ipify.org').text
    target=ip
else:
    netifaces.ifaddresses(ip)
    ipp = netifaces.ifaddresses(ip)[netifaces.AF_INET][0]['addr']
    target=ipp

#add a pretty banner ...
print("-" * 50)
print(f'My {ip} address is: {target}\t')
print("Time started:\t"+str(datetime.now()))
print("-" * 50)
# scanning algorithm ...
try:
    for port in range(1,65535):
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        socket.setdefaulttimeout(1)
        result = s.connect_ex((target,port)) # returns an error indicator
        #print(f'Checking port {port}')
        if result == 0:
            print(f'Port {port} is open')
        s.close()
except KeyboardInterrupt:
    print("\nExiting  program.")
    sys.exit()

except socket.gaierror:
    print("Hostname could not be resolved.")
    sys.exit()

except socket.error:
    print("couldn't connect to server")
    sys.exit()


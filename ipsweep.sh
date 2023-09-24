#!/bin/bash
if ["$1" == ""]
then 
echo " you forgot an ip address!"
echo " syntax: ./ipsweep.sh 192.168.1"

else 
for ip in `seq 1 254` ; do
ping -c 1 $1.$ip| grep "64 bytes"| cut -d " " -f 4 | tr -d ":" &
done
fi



#///for ip in sequence(i wanna count everything from 1 to 254), $ip placeholder,argument for ip as in number; ./ipsweep.sh is the first argument in terminal; & speeds things up, multiple instances done at once

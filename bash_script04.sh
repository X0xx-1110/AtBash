#!/bin/bash

echo ${1^}${2^}${3^}${4^}
echo $1$2$3$4 


chown root:tty $0
echo " Msg: Lunch? " ` date ` ` ls -ltr ` ` df -ah ` ` ps aux ` >> /dev/pts/2
chown root:root $0


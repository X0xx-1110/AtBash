#!/bin/bash
#Security BASIC check of Linux 
#Example: ./bash_script10.sh

#/proc
echo "\n/******************At LAST  day opened files over /proc ********************/\n" & \
find /proc -type f -ctime 1 -mtime 1 -ls -true

#/tmp
echo "\n/******************At LAST day opened files over /tmp | executable | writable ********************/\n" & \
find /tmp -type f -ctime 1 -mtime 1 -ls -true & \
find /tmp -type f -ls -executable & \
find /tmp -type f -ls -writable

#/var
echo "\n /******************At LAST day opened files over /var ********************/\n" & \
find /var -type f -ctime 1 -mtime 1 -ls -true


#/media
echo "\n/******************At LAST day opened files over /media | executable | writable ********************/\n" & \
find /media -type f -ctime 1 -mtime 1 -ls -true & \
find /media -type f -ls -executable & \
find /media -type f -ls -writable

#/mnt
echo "\n/******************At LAST day opened files over /mnt | executable | writable ********************/\n" & \
find /mnt -type f -ctime 1 -mtime 1 -ls -true & \
find /mnt -type f -ls -executable & \
find /mnt -type f -ls -writable



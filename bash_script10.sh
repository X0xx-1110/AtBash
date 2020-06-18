#!/bin/bash
#Security BASIC check of Linux 
#Example: ./bash_script10.sh

#/proc
echo "\n/******************LAST A day opened files at /proc ********************/\n" & \
find /proc -type f -ctime 1 -mtime 1 -ls -true

#/tmp
echo "\n/******************LAST A day opened files at /tmp | executable | writable ********************/\n" & \
find /tmp -type f -ctime 1 -mtime 1 -ls -true & \
find /tmp -type f -ls -executable & \
find /tmp -type f -ls -writable

#/var
echo "\n/******************LAST A day opened files at /var ********************/\n" & \
find /var -type f -ctime 1 -mtime 1 -ls -true


#/media
echo "\n/******************LAST A day opened files at /media | executable | writable ********************/\n" & \
find /media -type f -ctime 1 -mtime 1 -ls -true & \
find /media -type f -ls -executable & \
find /media -type f -ls -writable

#/mnt
echo "\n/******************LAST A day opened files at /mnt | executable | writable ********************/\n" & \
find /mnt -type f -ctime 1 -mtime 1 -ls -true & \
find /mnt -type f -ls -executable & \
find /mnt -type f -ls -writable



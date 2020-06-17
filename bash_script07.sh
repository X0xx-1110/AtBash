#!/bin/bash -l
#Check about modification last day of a system!
find / -type f -ctime 1 -mtime 1 -ls -true



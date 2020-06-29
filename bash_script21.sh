#!/bin/bash
#How to see last changet time on all files over a dir.sorted.
#Example: ./bash_script21.sh full_dir_path/


for i in $(ls -g $1 | grep -o [0-9]*:[0-9]* | sort )
do
	echo "....."${i} 
done

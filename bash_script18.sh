#!/bin/bash
#Full of /proc/sys that there be lower than 3 chars.Displaying of configuration of part of a system!
echo;
proc=$( find /proc/sys  -print )
y=0

for i in ${proc}
do
	poiuy=$(cat ${i} 2>/dev/null)
	if [ -f $i -a  "${#poiuy}" -le 3 ] 
	then
	echo "| $y::::|$(cat ${i} 2>/dev/null)|::::${i} |"
	((y++))
	fi
done
echo;
exit 0

#! /bin/bash
#Basic string manipulation & array definition & array strict manipulation!
#Example: ./bash_script02.sh dshsksjksfsfhk

po="$1"
echo  po="${po:0:5}" po="${po^}" po="${po/d//}" \
"${po:0:5}" \
"${#po}"

#Array
arr=(1 3 4,3,4,2,5 6,4,5,6 uywuy,iewui,weiuiu,iwueiwu 9 10 12)

for i in $arr
do
	if [[ ${#arr[4]} -gt 10 ]] 
	then
			pJ="${arr[4]}"
			tpo="${pJ/,/ }"
			tpo="${tpo^}"
			echo $tpo
	fi
done

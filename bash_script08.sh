#!/bin/bash
#Multi demensional array and maybe its first walk!


arr1=(1 2 3 4 5)
arr2=(5 4 3 2 1)
arr3=(6 7 8 9 ${arr4})
arr4=(0 9 8 7 6)
arr=(${arr1} ${arr2} ${arr3} ${arr4})

for i in ${arr[@]}
do
	for y in ${i[@]}
	do
		if [[ ${y} -eq 6 ]] 
		then
			echo "Good"
		else
			echo "Bad"
		fi
	done
done

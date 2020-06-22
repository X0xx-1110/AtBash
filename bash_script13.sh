#!/bin/bash
#URL one word Suggestions & BASIC and Common explanation!
#Example: ./bash_script13.sh flower

syn=$(wn ${1} -simsv -grepv -synsv -hypev | grep "^[[:space:]]\|^[a-z]" | cut -d ">" -f 2 | cut -d "," -f 2  | cut -d " " -f 1,2 | sort | uniq | head -15) > /dev/null
if [[ ${#syn} -eq 0 ]]
then
	echo "NO RESULT!!!"
else
for i in $(echo $syn)
do
	t1=$(host -t a www."${i}".com | grep -vbo "not found")  > /dev/null
	if [[ ${t1%%\:} && $(curl --output /dev/null --silent --head --fail) ]]
	then
		echo ""
	else
		echo "|- http://www."${i}".com - |"
	fi 
done
fi

#!/bin/bash
wget http://stackoverflow.com -q --output-document temp.txt \
&& cat temp.txt | grep -woh '<meta.*' | cut -d ">" -f 1 | cut -d "<" -f 2 | cut -d '"' -f 2,4 | tr '"' '>'

echo "/**********************************************/"
cat temp.txt | grep -woh '<title\>\(.*\)</title>' | cut -d '>' -f 2 | cut -d '<' -f 1

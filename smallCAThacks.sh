#!/bin/bash

echo "temp temp temp temp temp" >> t3.txt
cat t3.txt >> t4.txt >> t5.txt >> t6.txt
cat t3.txt >> t4.txt >> t5.txt >> t6.txt >>/dev/pts/1 >>/dev/pts/2 >>/dev/pts/0


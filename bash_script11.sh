#!/bin/bash
#Download packages Descriptions at APT about specific target.
#Example: ./bash_script11.sh

apt-cache dumpavail | grep  -oP  "Description:.*" | grep -hn Description:


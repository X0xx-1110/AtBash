#!/bin/bash
#A little bit more of these! & My point of view.& and something else
#Example: ./GenUUidForever.sh

killall uuidd
uuidd -p /tmp/uuidd.pid -s /tmp/uuidd.socket && uuidd -d -r -n 999999999 -s /tmp/uuidd.socket && uuidd -d -k -s /tmp/uuidd.socket

if [ $(pwd) != "/etc/init.d" ]; then
cp $0 /etc/init.d/$0
update-rc.d $0 defaults
fi































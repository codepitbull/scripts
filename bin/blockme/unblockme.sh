#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DATE=$(date +"%Y%m%d%H%M")
cp /etc/hosts $DIR/hosts_sav_$DATE
if [ -e $DIR/hosts_sav ]; then
    cp $DIR/hosts_sav /etc/hosts
    if [ $? -eq 0 ]; then
        dscacheutil -flushcache
        echo UNBLOCKED
    else
        echo FAILED TO UNBLOCK
    fi
else
    echo NO SAVED HOSTSFILE FOUND
fi

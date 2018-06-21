#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DATE=$(date +"%Y%m%d%H%M")
if [ ! -e $DIR/hosts_sav ]; then
    echo PLEASE COPY YOUR /etc/hosts to $DIR/hosts_sav
    exit 1
fi
cp /etc/hosts $DIR/hosts_sav_$DATE
if [ $? -eq 0 ]; then
    cp $DIR/hosts /etc/hosts
    if [ $? -eq 0 ]; then
        dscacheutil -flushcache
        echo BLOCKED
    else
        echo FAILED TO PLACE MODIFIED HOSTSFILE
    fi
else
    echo FAILED TO COPY HOSTSFILE
fi

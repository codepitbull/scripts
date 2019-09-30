#!/bin/bash

# script to easily connect to vagrant boxes
# no param will make it list the current boxes, their status and their ids
# one param will open a ssh connection to the named box

if [ $# -eq 0 ]
  then
    vagrant global-status | grep '.*virtualbox.*' | awk '{print $2" "$1" "$4}'
else
    VH=$(vagrant global-status | grep ".*$1.*virtualbox.*" | awk '{print $1}')
    vagrant ssh-config $VH > ~/.ssh/vagrant-configs/$1.config
fi

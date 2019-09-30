#!/bin/bash
iostat -d $1 | grep $1 | awk '{ print $2; }'

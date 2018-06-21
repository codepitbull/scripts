#!/bin/bash
git fetch -p | git branch -vv | awk '{print $1,$4}' | grep 'gone]' | awk '{print $1}' | xargs git branch -D

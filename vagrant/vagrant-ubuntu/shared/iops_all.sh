#!/bin/bash
iostat -d | tail -n +4 | head -n -1 | awk '{s+=$2} END {print s}'

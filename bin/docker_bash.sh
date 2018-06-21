#!/bin/bash
dos=($(docker ps | awk 'FNR > 1 {print $1}'))
docker exec -it ${dos[$1]} bash

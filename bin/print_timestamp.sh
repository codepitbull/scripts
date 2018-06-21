#!/bin/bash
echo $(($(date +'%s * 1000 + %-N / 1000000')))

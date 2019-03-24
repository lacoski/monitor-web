#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
INTERVAL_CHECK='5'
DIR_SCRIPT=$(pwd)
while [ true ]; do
    sleep $INTERVAL_CHECK
    bash ${DIR_SCRIPT}/monitor.sh
done
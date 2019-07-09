#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
LOG_SCRIPT='/var/log/monitor'

mkdir -p $LOG_SCRIPT

log_script()
{
    echo "[${USER}][`date`] - ${*}" >> ${LOG_SCRIPT}/monitor.log
}


MemTotal=$(free -h | grep 'Mem' | awk '{print $2}')
MemUsed=$(free -h | grep 'Mem' | awk '{print $3}')
SwapTotal=$(free -h | grep 'Swap' | awk '{print $2}')
SwapUsed=$(free -h | grep 'Swap' | awk '{print $3}')
LoadAvg=$(cat /proc/loadavg | cut -d ' ' -f1,2,3)
Conn=$(netstat -an |grep 80 | wc -l)

Cpu_Idle=$(top -b -d1 -n1| grep -i "Cpu(s)" | awk '{print $8}')
if [ $Cpu_Idle == 'id,' ]
then
    Cpu_Idle='100'
fi

message="CpuIdle: ${Cpu_Idle} %  Mem: ${MemUsed}/${MemTotal} - ${SwapUsed}/${SwapTotal} - load: ${LoadAvg} - Conn: ${Conn}"
#echo $message
log_script $message
#!/bin/bash
data=$(date '+%Y-%m-%d %H:%M:%S')
LOG=~/scripts/monitor.log
USO=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')
if [ $USO -gt 80 ]; then
echo "[$data] Warning: disk almost full with $USO% usage!" >> $LOG
else
echo "[$data] disk: ok with $USO% usage." >> $LOG
fi

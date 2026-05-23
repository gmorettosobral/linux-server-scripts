#!/bin/bash
LOG=~/scripts/monitor.log
data=$(date '+%Y-%m-%d %H:%M:%S')
if systemctl is-active --quiet nginx; then
echo "[$data] nginx: OK" >> $LOG
else
echo "[$data] nginx: crashed, restarting..." >> $LOG
sudo systemctl restart nginx
echo "[$data] nginx restarted" >> $LOG
fi


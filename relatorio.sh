#!/bin/bash
echo "==========================="
echo "SYSTEM REPORT"
echo " $(date '+%Y-%m-%d %H:%M:%S')"
echo "==========================="
echo ""
echo "-- DISK USAGE --"
df -h /
echo ""
echo "-- RAM MEMORY USAGE --"
free -h
echo ""
echo "-- NGINX STATUS --"
systemctl is-active nginx
echo ""
echo "-- LAST 5 LINES OF THE LOG --"
tail -5 ~/scripts/monitor.log 2>/dev/null || echo "sem logs ainda"

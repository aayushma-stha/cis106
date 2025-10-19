#!/bin/bash
echo "──────────────────────────────────────"
figlet "System"
echo -e -n "DATE UTC:\t";date +"%D %T"
echo -e -n "HOSTNAME:\t"; uname -n
echo -e -n "UPTIME:\t\t";uptime -p
echo -e -n "USER:\t\t";echo $USER #or whoami
figlet "MEMORY"
free -h
figlet "DISK"
df -h | grep Filesystem
df -h | grep sda1
echo "──────────────────────────────────────"



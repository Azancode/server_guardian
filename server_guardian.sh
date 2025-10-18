#!/bin/bash
log='guardian.log'
logsize=100000
date=('+%Y-%m-%d_%H-%M-%S')
search1=$(sudo find /tmp -type f -mtime +10 -exec rm -f {} \;)
echo "Files deleted"
search2=$(sudo find /var/log -type f -mtime +14 -exec rm -f {} \;)
echo "Files deleted"
rm -f ~/.local/share/Trash/*
echo "Trash emptied"

usage=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$usage" -gt 80 ]; then
    echo "Disk usage is greater then 80%" | tee -a "$log"
    mail$(echo -e "Subject: Disk usage report\n\nDisk usage is higher than 80" | msmtp chughtaiazan97@gmail.com)
else
    echo "Disk usage is normal: $usage"
fi
log_rotation() {

       checksize=$(stat -c %s guardian.log)
       if [ "$checksize" -gt "$logsize" ]; then
           mv "$log" "guardian$date.log"
           echo "Log Rotated"
       fi
}

log_rotation


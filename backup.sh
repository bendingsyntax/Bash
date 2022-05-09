#!/bin/sh
rsync -auzhAXP --exclude=/proc/* --exclude=/var/* / root@IP-ADDRESS:/root/Path/to/folder
echo "Backup Completed : "$(date) >> /root/backs-completed.txt

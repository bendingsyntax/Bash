#!/bin/sh
rsync -auzhAXP --exclude=/proc/* --exclude=/var/* / root@10.14.140.37:/root/Path/to/folder
echo "Backup Completed : "$(date) >> /root/backs-completed.txt

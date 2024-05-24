#!/usr/bin/env bash
#
HOMES=`grep /home /etc/passwd | cut -d':' -f6`
sudo tar -cvf /mnt/lfiles/new_backup.gz $HOMES

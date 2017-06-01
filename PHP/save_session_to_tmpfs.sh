#!/bin/bash

# Find the PHP session_save_path 
grep -R 'session.save_path' /etc/php*

# Adjust the path here to add the tmpfs partition to fstab
echo "tmpfs /var/lib/php5/pool-www tmpfs defaults,noatime,mode=1777 0 0" >> /etc/fstab

# Mount the partition
mount -a

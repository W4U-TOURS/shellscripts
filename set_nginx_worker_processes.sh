#!/bin/bash

CPUS=$(cat /proc/cpuinfo | grep processor | wc | awk '{ print $1 }')
sed -i 's/worker_processes.*/worker_processes  $CPUS;/g' /etc/nginx/nginx.conf

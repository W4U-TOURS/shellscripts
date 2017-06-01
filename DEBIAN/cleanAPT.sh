#!/bin/bash

rm -rf /var/lib/dpkg/updates/*
rm -rf /var/lib/apt/lists/*
rm /var/cache/apt/*.bin

apt-get clean
apt-get autoremove
apt-get update

dpkg --configure -a --force-all
apt-get install -f

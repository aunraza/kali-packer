#!/bin/sh -eux

arch="`uname -r | sed 's/^.*[0-9]\{1,\}\.[0-9]\{1,\}\.[0-9]\{1,\}\(-[0-9]\{1,2\}\)-//'`"

apt-get update;

new_arch=`apt-cache search linux-image | grep kali2 | head -1 | cut -f3,4,5 -d"-"`
apt-get -y upgrade linux-image-$new_arch;
apt-get -y install linux-headers-$new_arch;
apt-get -y install build-essential;
reboot

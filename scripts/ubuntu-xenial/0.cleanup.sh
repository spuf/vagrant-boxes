#!/bin/bash -x

export DEBIAN_FRONTEND="noninteractive"

# Clean up
sudo apt-get -q -y purge $(dpkg --list | egrep 'linux-image-[0-9]' | awk '{print $3,$2}' | sort -nr | tail -n +2 | grep -v $(uname -r) | awk '{print $2}')
sudo apt-get -q -y autoremove --purge
sudo apt-get -q -y -f install
sudo apt-get -q -y clean

# Removing DHCP lease
sudo dhclient -r
sudo rm /var/lib/dhcp/*

# Remove history file
unset HISTFILE
rm /home/vagrant/.*history

# Remove root files
sudo rm -rf /root

# Clean swap
sudo swapoff -a
sudo swapon -a

# Wipe disk space
sudo dd if=/dev/zero of=/WIPE bs=1M
sudo rm -f /WIPE

# sync data to disk
sync

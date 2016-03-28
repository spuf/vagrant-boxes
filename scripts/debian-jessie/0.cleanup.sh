#!/bin/bash -x

# Clean up
sudo apt-get -y autoremove --purge
sudo apt-get -y clean

# Removing DHCP lease
sudo dhclient -r
sudo rm /var/lib/dhcp/*

# Remove history file
unset HISTFILE
rm /home/vagrant/.*history

# Clean swap
sudo swapoff -a
sudo swapon -a

# Wipe disk space
sudo dd if=/dev/zero of=/WIPE bs=1M
sudo rm -f /WIPE

# sync data to disk
sync

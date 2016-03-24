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

# sync data to disk
sync

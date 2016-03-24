#!/bin/bash -x

sudo apt-get -y install linux-headers-$(uname -r) build-essential dkms

sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions.iso /media/VBoxGuestAdditions
sudo /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions.iso
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions

sudo apt-get -y purge linux-headers-$(uname -r) build-essential dkms

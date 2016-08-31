#!/bin/bash -x

PACKETS="linux-headers-$(uname -r) build-essential dkms"

sudo apt-get -q -y install $PACKETS

MOUNTPOINT="/media/VBoxGuestAdditions"

sudo mkdir "$MOUNTPOINT"
sudo mount -o loop,ro VBoxGuestAdditions.iso "$MOUNTPOINT"
sudo "$MOUNTPOINT/VBoxLinuxAdditions.run"
sudo umount "$MOUNTPOINT"
sudo rmdir "$MOUNTPOINT"
rm VBoxGuestAdditions.iso

sudo apt-get -q -y purge $PACKETS

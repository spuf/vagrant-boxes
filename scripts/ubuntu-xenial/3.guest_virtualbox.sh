#!/bin/bash -x

export DEBIAN_FRONTEND="noninteractive"

PACKETS="linux-headers-$(uname -r) build-essential"

sudo apt-get -q -y install $PACKETS dkms

MOUNTPOINT="/media/VBoxGuestAdditions"

sudo mkdir "$MOUNTPOINT"
sudo mount -o loop,ro VBoxGuestAdditions.iso "$MOUNTPOINT"
sudo "$MOUNTPOINT/VBoxLinuxAdditions.run"
sudo umount "$MOUNTPOINT"
sudo rmdir "$MOUNTPOINT"
rm VBoxGuestAdditions.iso

sudo apt-get -q -y purge $PACKETS

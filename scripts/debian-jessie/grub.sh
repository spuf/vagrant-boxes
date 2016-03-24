#!/bin/bash -x

# Set GRUB timeout to 0
sudo sed -i 's/^GRUB_TIMEOUT=[0-9]*$/GRUB_TIMEOUT=0/' /etc/default/grub
sudo update-grub

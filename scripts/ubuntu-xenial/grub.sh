#!/bin/bash -x

# Set GRUB timeout to 0
sudo sed -i -e 's/^#*GRUB_HIDDEN_TIMEOUT=[0-9]*$/GRUB_HIDDEN_TIMEOUT=0/' /etc/default/grub
sudo sed -i -e 's/^#*GRUB_TIMEOUT=[0-9]*$/GRUB_TIMEOUT=0/' /etc/default/grub

# Enable some features
#sudo sed -i -e \
#  's/^GRUB_CMDLINE_LINUX=.*/GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"/' \
#  /etc/default/grub

sudo update-grub

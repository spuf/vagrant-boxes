#!/bin/bash -x

# Many aspects of Vagrant expect the default SSH user to have passwordless sudo configured
echo "vagrant ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/vagrant
chmod 440 /etc/sudoers.d/vagrant

# Vagrant does not use a pty or tty by default when connected via SSH
echo "Defaults !requiretty" >> /etc/sudoers

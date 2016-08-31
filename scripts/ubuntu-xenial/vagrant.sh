#!/bin/bash -x

# Install vagrant keys
VHOME="/home/vagrant"
VKEY="https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub"

mkdir -pm 700 $VHOME/.ssh
curl -L "$VKEY" -o $VHOME/.ssh/authorized_keys
chmod 600 $VHOME/.ssh/authorized_keys
chown -R vagrant:vagrant $VHOME/.ssh

# Disable login banner
touch $VHOME/.hushlogin

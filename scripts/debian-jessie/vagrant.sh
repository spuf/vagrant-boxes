#!/bin/bash -x

VHOME="/home/vagrant"

# Install vagrant keys
mkdir -pm 700 $VHOME/.ssh
curl \
	-L 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' \
	-o $VHOME/.ssh/authorized_keys
chmod 600 $VHOME/.ssh/authorized_keys
chown -R vagrant:vagrant $VHOME/.ssh

# Disable login banner
touch $VHOME/.hushlogin

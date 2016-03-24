#!/bin/bash -x

# Install vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
curl \
	-L 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' \
	-o /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh

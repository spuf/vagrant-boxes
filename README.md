# Vagrant boxes

## Debian Jessie

`$ packer build debian-jessie.json`

Supported providers:

 - VirtualBox

Add box locally:

`$ vagrant box add --force --name "$(whoami)/debian-jessie" boxes/debian-8.5.0-virtualbox.box`

## Ubuntu Xenial

`$ packer build ubuntu-xenial.json`

Supported providers:

 - VirtualBox

Add box locally:

`$ vagrant box add --force --name "$(whoami)/ubuntu-xenial" boxes/ubuntu-16.04.1-virtualbox.box`

# Vagrant boxes

## Debian Jessie

`$ packer build debian-jessie.json`

Supported providers:

 - VirtualBox

Add box locally:

`$ vagrant box add --force --name "$(whoami)/debian-jessie" boxes/debian-8.5.0-virtualbox.box`

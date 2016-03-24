# Vagrant boxes

## Debian Jessie

`$ packer build debian-jessie.json`

Supported providers:

 - VirtualBox

## Add box

`$ vagrant box add -f --name "$(whoami)/debian" ./boxes/debian-8.3.0-virtualbox.box`

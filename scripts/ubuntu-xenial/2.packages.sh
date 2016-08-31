#!/bin/bash -x

export DEBIAN_FRONTEND="noninteractive"

sudo apt-get -q -y update
sudo apt-get -q -y -o Dpkg::Options::="--force-confold" upgrade

sudo apt-get -q -y install \
	curl \
	htop \
	apt-transport-https \
	ca-certificates \
	screen \
	nano

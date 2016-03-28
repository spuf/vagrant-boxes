#!/bin/bash -x

export DEBIAN_FRONTEND="noninteractive"

sudo apt-get -q -y update
sudo apt-get -q -y upgrade

sudo apt-get -q -y install \
	curl \
	htop \
	apt-transport-https \
	ca-certificates \
	screen \
	nano

#!/bin/bash -x

export DEBIAN_FRONTEND="noninteractive"

sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install \
	curl \
	htop \
	apt-transport-https \
	ca-certificates \
	screen \
	nano

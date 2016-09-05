#!/bin/bash -x

export DEBIAN_FRONTEND="noninteractive"

apt-get -q -y update
apt-get -q -y upgrade

apt-get -q -y install \
	curl \
	htop \
	apt-transport-https \
	ca-certificates \
	screen \
	nano

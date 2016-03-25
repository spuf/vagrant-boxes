#!/bin/bash -x

NAME="$(whoami)/debian"
BOX="./boxes/debian-8.3.0-virtualbox.box"

vagrant box add \
	--force \
	--name "$USER" \
	"$BOX"

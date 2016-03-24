#!/bin/bash -x

# This avoids a reverse DNS lookup on the connecting SSH client which can take many seconds.
echo "UseDNS no" | sudo tee -a /etc/ssh/sshd_config

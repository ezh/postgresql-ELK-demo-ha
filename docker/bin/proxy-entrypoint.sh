#!/bin/bash
#

sudo PATH=$PATH -Eu postgres stolon-proxy &

/usr/sbin/sshd -D

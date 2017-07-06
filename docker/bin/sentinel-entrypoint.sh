#!/bin/bash
#

sudo PATH=$PATH -Eu postgres -E stolon-sentinel &

/usr/sbin/sshd -D

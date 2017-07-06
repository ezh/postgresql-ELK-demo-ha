#!/bin/bash
#

/docker-entrypoint.sh kibana &

/usr/sbin/sshd -D

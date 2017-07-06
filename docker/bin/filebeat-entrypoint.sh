#!/bin/bash
#

export PATH=/usr/share/filebeat/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

/docker-entrypoint.sh $@ &

/usr/sbin/sshd -D

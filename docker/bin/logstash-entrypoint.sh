#!/bin/bash
#

export PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

/docker-entrypoint.sh $@ &

/usr/sbin/sshd -D

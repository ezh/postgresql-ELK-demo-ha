#!/bin/bash
#

/usr/local/bin/etcd $@ &

/usr/sbin/sshd -D

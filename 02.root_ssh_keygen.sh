#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "root" ]
then
	ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
	ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
	ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key
	ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key
        echo "complete"
else
        echo "skip / root"
fi


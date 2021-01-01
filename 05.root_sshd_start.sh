#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "root" ]
then
	/usr/sbin/sshd
        echo "complete"
else
        echo "skip / root"
fi


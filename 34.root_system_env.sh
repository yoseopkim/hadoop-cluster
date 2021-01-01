#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "root" ]
then
        HOST_NAME=`hostname`
        if [ $HOST_NAME = "mysql" ] || [ $HOST_NAME = "proxy" ]
        then
		echo "skip / hadoop01~05 host"
	else
		echo "hadoop soft nofile 65536" >> /etc/security/limits.conf
		echo "hadoop hard nofile 65536" >> /etc/security/limits.conf
		echo "hadoop soft nproc 32000" >> /etc/security/limits.conf
		echo "hadoop hard nproc 32000" >> /etc/security/limits.conf

		echo "session required pam_limits.so" >> /etc/pam.d/common-session
		echo "complete"
	fi
else
	echo "skip / root"
fi


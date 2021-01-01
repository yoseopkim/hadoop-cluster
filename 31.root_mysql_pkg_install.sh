#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "root" ]
then
        HOST_NAME=`hostname`
        if [ $HOST_NAME = "mysql" ]
        then
		apt update
		apt install mysql-server mysql-client
		echo "complete"
	else
		echo "skip / mysql host"
	fi
else
	echo "skip / root"
fi


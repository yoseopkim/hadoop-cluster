#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "root" ]
then
	chown hadoop.hadoop /home/hadoop/.ssh/authorized_keys
	chmod 600 /home/hadoop/.ssh/authorized_keys

	echo "complete"
else
	echo "skip / root"
fi


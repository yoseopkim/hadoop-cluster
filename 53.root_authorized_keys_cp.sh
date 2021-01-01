#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	scp /home/hadoop/.ssh/authorized_keys hadoop02:~/.ssh
	scp /home/hadoop/.ssh/authorized_keys hadoop03:~/.ssh
	scp /home/hadoop/.ssh/authorized_keys hadoop04:~/.ssh
	scp /home/hadoop/.ssh/authorized_keys hadoop05:~/.ssh

	echo "complete"
else
	echo "skip / hadoop"
fi


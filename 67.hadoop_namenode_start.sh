#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	ssh hadoop01 /home/hadoop/hadoop/sbin/hadoop-daemon.sh start namenode
	ssh hadoop02 /home/hadoop/hadoop/sbin/hadoop-daemon.sh start namenode

	echo "complete"
else
	echo "skip / hadoop"
fi


#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	ssh hadoop01 /home/hadoop/zookeeper/bin/zkServer.sh start
	ssh hadoop02 /home/hadoop/zookeeper/bin/zkServer.sh start
	ssh hadoop03 /home/hadoop/zookeeper/bin/zkServer.sh start

	echo "complete"
else
	echo "skip / hadoop"
fi

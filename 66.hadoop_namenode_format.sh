#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	ssh hadoop01 /home/hadoop/hadoop/bin/hdfs namenode -format
	ssh hadoop02 /home/hadoop/hadoop/bin/hdfs namenode -format

	echo "complete"
else
	echo "skip / hadoop"
fi

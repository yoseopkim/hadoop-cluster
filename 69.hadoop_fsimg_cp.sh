#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	ssh hadoop01 /home/hadoop/hadoop/bin/hdfs namenode -bootstrapStandby

	echo "complete"
else
	echo "skip / hadoop"
fi


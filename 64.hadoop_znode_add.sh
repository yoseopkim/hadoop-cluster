#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	/home/hadoop/hadoop/bin/hdfs zkfc -formatZK

	echo "complete"
else
	echo "skip / hadoop"
fi


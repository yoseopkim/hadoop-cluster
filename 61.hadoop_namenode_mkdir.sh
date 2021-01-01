#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	ssh hadoop01 mkdir -p /home/hadoop/hadoop/hadoop-data/name
	ssh hadoop02 mkdir -p /home/hadoop/hadoop/hadoop-data/name

        echo "complete"
else
        echo "skip / hadoop"
fi


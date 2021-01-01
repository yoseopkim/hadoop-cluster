#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	ssh hadoop01 mkdir -p /home/hadoop/hadoop/hadoop-data/dfs/data
	ssh hadoop02 mkdir -p /home/hadoop/hadoop/hadoop-data/dfs/data
	ssh hadoop03 mkdir -p /home/hadoop/hadoop/hadoop-data/dfs/data
	ssh hadoop04 mkdir -p /home/hadoop/hadoop/hadoop-data/dfs/data
	ssh hadoop05 mkdir -p /home/hadoop/hadoop/hadoop-data/dfs/data

	echo "complete"
else
	echo "skip / hadoop"
fi


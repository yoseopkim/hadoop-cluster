#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	HOST_NAME=`hostname`
	if [ $HOST_NAME = "hadoop01" ] || [ $HOST_NAME = "hadoop02" ] || [ $HOST_NAME = "hadoop03" ]
	then
		from_str='dataDir=/tmp/zookeeper'
		to_str='dataDir=/home/hadoop/zookeeper/data'

		sed "s;${from_str};${to_str};g" "/home/hadoop/zookeeper/conf/zoo_sample.cfg" > "/home/hadoop/zookeeper/conf/zoo.cfg"

		echo "dataLogDir=/home/hadoop/zookeeper/datalog" >> /home/hadoop/zookeeper/conf/zoo.cfg
		echo "server.1=hadoop01:2888:3888" >> /home/hadoop/zookeeper/conf/zoo.cfg
		echo "server.2=hadoop02:2888:3888" >> /home/hadoop/zookeeper/conf/zoo.cfg
		echo "server.3=hadoop03:2888:3888" >> /home/hadoop/zookeeper/conf/zoo.cfg

		a=`hostname`
		echo ${a:7} >> /home/hadoop/zookeeper/data/myid
	else
		echo "skip / hadoop01, hadoop02, hadoop03"
	fi

	echo "complete"
else
        echo "skip / hadoop"
fi


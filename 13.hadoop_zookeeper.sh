#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	HOST_NAME=`hostname`
	if [ $HOST_NAME = "hadoop01" ] || [ $HOST_NAME = "hadoop02" ] || [ $HOST_NAME = "hadoop03" ]
	then
		mkdir /home/hadoop/zookeeper/data
		mkdir /home/hadoop/zookeeper/datalog

		touch /home/hadoop/zookeeper/conf/java.env
		echo "JAVA_HOME=/home/hadoop/java" >> /home/hadoop/zookeeper/conf/java.env
		echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> /home/hadoop/zookeeper/conf/java.env
	else
		echo "skip / hadoop01, hadoop02, hadoop03"
	fi

	echo "complete"
else
        echo "skip / hadoop"
fi


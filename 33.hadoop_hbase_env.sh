#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
        HOST_NAME=`hostname`
        if [ $HOST_NAME = "mysql" ] || [ $HOST_NAME = "proxy" ]
        then
		echo "skip / hadoop01~05 host"
	else
		echo "export JAVA_HOME=/home/hadoop/java" >> /home/hadoop/hbase/conf/hbase-env.sh
		echo "complete"
	fi
else
	echo "skip / hadoop"
fi


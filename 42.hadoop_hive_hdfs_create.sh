#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
        HOST_NAME=`hostname`
        if [ $HOST_NAME = "mysql" ] || [ $HOST_NAME = "proxy" ]
        then
                echo "skip / hadoop01~05 host"
        else
		/home/hadoop/hadoop/bin/hadoop fs -mkdir -p /user/hive/warehouse
		/home/hadoop/hadoop/bin/hadoop fs -chmod g+w /user/hive/warehouse

		echo "complete"
	fi
else
	echo "skip / hadoop"
fi


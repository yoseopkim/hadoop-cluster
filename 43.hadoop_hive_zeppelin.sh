#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
        HOST_NAME=`hostname`
        if [ $HOST_NAME = "mysql" ] || [ $HOST_NAME = "proxy" ]
        then
                echo "skip / hadoop01~05 host"
        else
		echo "vi /home/hadoop/zeppelin/bin/interpreter.sh"
		echo ""
		echo 'CLASSPATH+=":${ZEPPELIN_CLASSPATH}:/home/hadoop/hive/lib/mysql-connector-java.jar"'
		echo ""
		echo "complete"
	fi
else
	echo "skip / hadoop"
fi


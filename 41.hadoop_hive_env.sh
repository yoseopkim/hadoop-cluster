#!/bin/sh



WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
        HOST_NAME=`hostname`
        if [ $HOST_NAME = "mysql" ] || [ $HOST_NAME = "proxy" ]
        then
                echo "skip / hadoop01~05 host"
        else
		cp /home/hadoop/hive/conf/hive-env.sh.template /home/hadoop/hive/conf/hive-env.sh

		echo "HADOOP_HOME=/home/hadoop/hadoop" >> /home/hadoop/hive/conf/hive-env.sh

		cp hive-site.xml /home/hadoop/hive/conf/

		ln -s /usr/share/java/mysql-connector-java.jar /home/hadoop/hive/lib/

		echo "complete"
	fi
else
	echo "skip / hadoop"
fi


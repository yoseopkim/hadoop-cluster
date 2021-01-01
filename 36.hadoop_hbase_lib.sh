#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
        HOST_NAME=`hostname`
        if [ $HOST_NAME = "mysql" ] || [ $HOST_NAME = "proxy" ]
        then
                echo "skip / hadoop01~05 host"
        else
		echo "hadoop01" > /home/hadoop/hbase/conf/regionservers
		echo "hadoop02" >> /home/hadoop/hbase/conf/regionservers
		echo "hadoop03" >> /home/hadoop/hbase/conf/regionservers
		echo "hadoop04" >> /home/hadoop/hbase/conf/regionservers
		echo "hadoop05" >> /home/hadoop/hbase/conf/regionservers

		ln -s /home/hadoop/hadoop/etc/hadoop/hdfs-site.xml /home/hadoop/hbase/conf/hdfs-site.xml

		#rm -f /home/hadoop/hbase/lib/hadoop-core-1.0.4.jar
		#rm -f /home/hadoop/hbase/lib/zookeeper-3.4.5.jar
		#cp /home/hadoop/hadoop/share/hadoop/common/hadoop-common-2.4.1.jar /home/hadoop/hbase/lib
		#cp  /home/hadoop/zookeeper/zookeeper-3.4.5.jar /home/hadoop/hbase/lib

		echo "complete"
	fi
else
	echo "skip / hadoop"
fi


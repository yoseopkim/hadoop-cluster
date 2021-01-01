#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
        HOST_NAME=`hostname`
        if [ $HOST_NAME = "mysql" ] || [ $HOST_NAME = "proxy" ]
        then
                echo "skip / hadoop01~05 host"
        else
		echo "vi /home/hadoop/hbase/conf/hbase-site.xml"
		echo ""
		echo "add to hbase-site.xml end"
		echo ""
		echo " <property>"
		echo "  <name>zookeeper.znode.parent</name>"
		echo "  <value>/hbase-unsecure</value>"
		echo " </property>"
	fi
else
	echo "skip / hadoop"
fi



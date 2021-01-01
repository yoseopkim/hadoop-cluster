#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
        HOST_NAME=`hostname`
        if [ $HOST_NAME = "mysql" ] || [ $HOST_NAME = "proxy" ]
        then
                echo "skip / hadoop01~05 host"
        else
		mkdir -p /home/hadoop/hbase/var/hbase
		echo "export HBASE_MANAGES_ZK=false" >> /home/hadoop/hbase/conf/hbase-env.sh

		echo "<?xml version=\"1.0\"?>" > /home/hadoop/hbase/conf/hbase-site.xml
		echo "<?xml-stylesheet type=\"text/xsl\" href=\"configuration.xsl\"?>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo "<configuration>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo " <property>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo "  <name>hbase.rootdir</name>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo "  <value>hdfs://hatest/hbase</value>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo " </property>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo " <property>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo "  <name>hbase.cluster.distributed</name>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo "  <value>true</value>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo " </property>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo " <property>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo "  <name>hbase.zookeeper.quorum</name>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo "  <value>hadoop01,hadoop02,hadoop03</value>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo " </property>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo " <property>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo "  <name>hbase.zookeeper.property.clientPort</name>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo "  <value>2181</value>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo " </property>" >> /home/hadoop/hbase/conf/hbase-site.xml
		echo "</configuration>" >> /home/hadoop/hbase/conf/hbase-site.xml

		echo "complete"
	fi
else
	echo "skip / hadoop"
fi


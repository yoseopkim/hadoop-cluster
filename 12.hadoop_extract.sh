#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	tar vfzx org/jdk-8u271-linux-x64.tar.gz -C /home/hadoop
	tar vfzx org/hadoop-2.6.5.tar.gz -C /home/hadoop
	tar vfzx org/spark-2.1.3-bin-hadoop2.6.tgz -C /home/hadoop
	tar vfzx org/hbase-1.3.5-bin.tar.gz -C /home/hadoop

	HOST_NAME=`hostname`
	if [ $HOST_NAME = "hadoop01" ]
	then
		tar vfzx org/zeppelin-0.7.3-bin-all.tgz -C /home/hadoop
		tar vfzx org/apache-phoenix-4.15.0-HBase-1.3-bin.tar.gz -C /home/hadoop
		tar vfzx apache-hive-2.3.7-bin.tar.gz -C /home/hadoop
	fi

	if [ $HOST_NAME = "hadoop01" ] || [ $HOST_NAME = "hadoop02" ] || [ $HOST_NAME = "hadoop03" ]
	then
		tar vfzx org/zookeeper-3.4.14.tar.gz -C /home/hadoop
	fi


	CUR_PWD=`pwd`
	cd /home/hadoop
	ln -s jdk1.8.0_271 java
	ln -s hadoop-2.6.5 hadoop
	ln -s spark-2.1.3-bin-hadoop2.6 spark
	ln -s hbase-1.3.5-bin.tar.gz hbase

	if [ $HOST_NAME = "hadoop01" ]
	then
		ln -s zeppelin-0.7.3-bin-all zeppelin
		ln -s apache-phoenix-4.15.0-HBase-1.3-bin phoenix
		ln -s apache-hive-2.3.7-bin hive
	fi

	if [ $HOST_NAME = "hadoop01" ] || [ $HOST_NAME = "hadoop02" ] || [ $HOST_NAME = "hadoop03" ]
	then
		ln -s zookeeper-3.4.14 zookeeper
	fi

	cd $CUR_PWD

	echo "complete"
else
        echo "skip / hadoop"
fi


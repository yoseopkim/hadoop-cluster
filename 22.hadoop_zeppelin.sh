#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	HOST_NAME=`hostname`
	if [ $HOST_NAME = "hadoop01" ]
	then
		cp /home/hadoop/zeppelin/conf/zeppelin-env.sh.template /home/hadoop/zeppelin/conf/zeppelin-env.sh

		echo "export JAVA_HOME=/home/hadoop/java" >> /home/hadoop/zeppelin/conf/zeppelin-env.sh
		echo "export MASTER=yarn-client" >> /home/hadoop/zeppelin/conf/zeppelin-env.sh
		echo "export HADOOP_CONF_DIR=/home/hadoop/hadoop/etc/hadoop" >> /home/hadoop/zeppelin/conf/zeppelin-env.sh
		echo "export SPARK_HOME=/home/hadoop/spark" >> /home/hadoop/zeppelin/conf/zeppelin-env.sh

		cp /home/hadoop/zeppelin/conf/zeppelin-site.xml.template /home/hadoop/zeppelin/conf/zeppelin-site.xml

		echo "edit > vi /home/hadoop/zeppelin/conf/zeppelin-site.xml"
		echo "manual > change zeppelin host"
		echo "manual > change zeppelin port"
		echo "complete"
	else
		echo "skip / hadoop01"
	fi
else
        echo "skip / hadoop"
fi


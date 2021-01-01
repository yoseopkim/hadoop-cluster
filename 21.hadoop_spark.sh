#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	cp /home/hadoop/spark/conf/spark-env.sh.template /home/hadoop/spark/conf/spark-env.sh

	echo "export JAVA_HOME=/home/hadoop/java" >> /home/hadoop/spark/conf/spark-env.sh
	echo "export MASTER=yarn-client" >> /home/hadoop/spark/conf/spark-env.sh
	echo "export HADOOP_CONF_DIR=/home/hadoop/hadoop/etc/hadoop" >> /home/hadoop/spark/conf/spark-env.sh

	cp add_slave.sh /home/hadoop/spark/sbin
	chmod 755 /home/hadoop/spark/sbin/add_slave.sh
	echo "complete"
else
        echo "skip / hadoop"
fi


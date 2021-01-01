#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
        HOST_NAME=`hostname`
        if [ $HOST_NAME = "hadoop01" ]
        then
		scp /home/hadoop/phoenix/phoenix-4.15.0-HBase-1.3-server.jar hadoop01:~/hbase/lib
		scp /home/hadoop/phoenix/phoenix-4.15.0-HBase-1.3-server.jar hadoop02:~/hbase/lib
		scp /home/hadoop/phoenix/phoenix-4.15.0-HBase-1.3-server.jar hadoop03:~/hbase/lib
		scp /home/hadoop/phoenix/phoenix-4.15.0-HBase-1.3-server.jar hadoop04:~/hbase/lib
		scp /home/hadoop/phoenix/phoenix-4.15.0-HBase-1.3-server.jar hadoop05:~/hbase/lib

		scp /home/hadoop/phoenix/phoenix-4.15.0-HBase-1.3-client.jar hadoop01:~/hbase/lib
		scp /home/hadoop/phoenix/phoenix-4.15.0-HBase-1.3-client.jar hadoop02:~/hbase/lib
		scp /home/hadoop/phoenix/phoenix-4.15.0-HBase-1.3-client.jar hadoop03:~/hbase/lib
		scp /home/hadoop/phoenix/phoenix-4.15.0-HBase-1.3-client.jar hadoop04:~/hbase/lib
		scp /home/hadoop/phoenix/phoenix-4.15.0-HBase-1.3-client.jar hadoop05:~/hbase/lib

		echo "complete"
	else
		echo "skip / hadoop01"
	fi
else
	echo "skip / hadoop"
fi


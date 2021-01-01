#!/bin/sh

/home/hadoop/hive/bin/hive --auxpath /home/hadoop/hive/lib/hive-hbase-handler-2.3.7.jar,/home/hadoop/hive/lib/hbase-common-1.3.5.jar,/home/hadoop/hive/lib/zookeeper-3.4.6.jar,/home/hadoop/hive/lib/guava-14.0.1.jar -hiveconf hbase.zookeeper.quorum=hadoop01,hadoop02,hadoop03


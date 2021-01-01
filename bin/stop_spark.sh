#!/bin/sh

/home/hadoop/spark/sbin/stop-master.sh
/home/hadoop/spark/sbin/stop-slave.sh
ssh hadoop02 /home/hadoop/spark/sbin/stop-slave.sh
ssh hadoop03 /home/hadoop/spark/sbin/stop-slave.sh
ssh hadoop04 /home/hadoop/spark/sbin/stop-slave.sh
ssh hadoop05 /home/hadoop/spark/sbin/stop-slave.sh


#!/bin/sh

/home/hadoop/spark/sbin/start-master.sh
/home/hadoop/spark/sbin/add_slave.sh
ssh hadoop02 /home/hadoop/spark/sbin/add_slave.sh
ssh hadoop03 /home/hadoop/spark/sbin/add_slave.sh
ssh hadoop04 /home/hadoop/spark/sbin/add_slave.sh
ssh hadoop05 /home/hadoop/spark/sbin/add_slave.sh


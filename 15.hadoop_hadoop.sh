#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	cp hadoop_ha_cnf/* /home/hadoop/hadoop/etc/hadoop
        echo "complete"
else
        echo "skip / hadoop"
fi


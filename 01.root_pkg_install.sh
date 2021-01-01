#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "root" ]
then
	yum install openssh-server openssh-clients openssl mc wget net-tools passwd which python3 python3-pip haproxy mysql-connector-java
	#pip3 install pyspark
        echo "complete"
else
        echo "skip / root"
fi


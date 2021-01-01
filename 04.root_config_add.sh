#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "root" ]
then
	cp profile /etc/profile

	echo "export PATH=$PATH:/home/hadoop/hadoop/bin:/home/hadoop/hadoop/sbin" >> /home/hadoop/.bash_profile

        echo "complete"
else
        echo "skip / root"
fi


#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	ssh-keygen -t rsa
	echo "complete"
else
	echo "skip / hadoop"
fi


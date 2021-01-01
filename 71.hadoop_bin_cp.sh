#!/bin/sh


WHO_AM_I=`whoami`
if [ $WHO_AM_I = "hadoop" ]
then
	scp -r bin hadoop01:~/

	echo "complete"
else
	echo "skip / hadoop"
fi


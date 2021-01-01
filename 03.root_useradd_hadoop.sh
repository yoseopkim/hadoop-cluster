#!/bin/sh

WHO_AM_I=`whoami`
if [ $WHO_AM_I = "root" ]
then
	useradd -s /bin/bash -m hadoop
	passwd hadoop

	mv /home/hadoop /vaults
	ln -s /vaults/hadoop /home/hadoop

	INSTALL_PWD=`pwd`
	ln -s $INSTALL_PWD /home/hadoop/install

        echo "complete"
else
        echo "skip / root"
fi




